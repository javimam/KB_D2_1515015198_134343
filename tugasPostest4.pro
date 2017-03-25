DOMAINS
 nama,jender,pekerjaan,benda,alasan,zat = symbol %symbol penamaan pada pencarian pelaku
 umur=integer%type data umur
PREDICATES
 nondeterm orang(nama, umur, jender, pekerjaan)%persfektip biodata orang yang di curigai sebagai x
 nondeterm selingkuh(nama, nama)%perspektif perumusan beberapa cara pencarian
 terbunuh_dengan(nama, benda)
 terbunuh(nama)
 nondeterm pembunuh(nama)%perspektif perumusan beberapa cara pencarian
 motif(alasan)
 ternodai(nama, zat)
 milik(nama, benda)
 nondeterm cara_kerja_mirip(benda, benda)%benda yang hampir memiliki kegunaan yang sama pada kasus ini
 nondeterm kemungkinan_milik(nama, benda)%benda yang dimiliki oleh orang yang di curigai
 nondeterm dicurigai(nama)%nama yang di curigai sebagai X
/* * * Fakta-fakta tentang pembunuhan * * */
CLAUSES

 orang(budi,55,m,tukang_kayu).%budi adalah seorang yang berumur 55  tahun perkerjaan sebagai tukang kayu
 orang(aldi,25,m,pemain_sepak_bola).%aldi adalah seorang yang berumur 25  tahun perkerjaan sebagai pesepakbola
 orang(aldi,25,m,tukang_jagal).%aldi adalah seorang yang berumur 25  tahun perkerjaan sebagai tukang jagal
 orang(joni,25,m,pencopet).%joni adalah seorang yang berumur 25  tahun perkerjaan sebagai pencopet
 selingkuh(ina,joni).%ina selingkuh kepada joni
 selingkuh(ina,budi).%ina selingkuh keoada budi
 selingkuh(siti,joni).%siti selingkuh keada joni
 terbunuh_dengan(siti,pentungan).%di ketahui siti di bunuh menggunakan pentungan
 terbunuh(siti).%siti terbunuh
 motif(uang).%dugaan motif pembunuhan karena uang
 motif(cemburu).%dugaan motif pembunuhan karena cemburu
 motif(dendam).%dugaan motif pembunuhan karena dendam
 ternodai(budi, darah).%budi memiliki noda darah
 ternodai(siti, darah).%siti memiliki noda darah
 ternodai(aldi, lumpur).%aldi memilki noda lumpur
 ternodai(joni, coklat).%joni memiliki noda coklat
 ternodai(ina, coklat).%ina memiliki noda coklat
 milik(budi,kaki_palsu).%
 milik(joni,pistol).
/* * * Basis Pengetahuan * * */
 cara_kerja_mirip(kaki_palsu, pentungan).%kaki palsu dapat di ginakan sebagai pentungan
 cara_kerja_mirip(balok, pentungan).%balok dapat di ginakan sebagai pentungan
 cara_kerja_mirip(gunting, pisau).%gunting dapat di ginakan sebagai pisau
 cara_kerja_mirip(sepatu_bola, pentungan).%pesepak bola dapat melakukan bisa saja seperti pentungan
 kemungkinan_milik(X,sepatu_bola):-
orang(X,_,_,pemain_sepak_bola).
 kemungkinan_milik(X,gunting):-
orang(X,_,_,pekerja_salon).
 kemungkinan_milik(X,Benda):-
milik(X,Benda).%
/* * * * * * * * * * * * * * * * * * * * * * * * * * * * *
* dicurigai semua orang yang memiliki senjata yang       *
* kerjanya mirip dengan senjata penyebab siti terbunuh.  *
* * * * * * * * * * * * * * * * * * * * * * * * * * * *  */
 dicurigai(X):-
terbunuh_dengan(siti,Senjata),
cara_kerja_mirip(Benda,Senjata) ,
kemungkinan_milik(X,Benda).% dari argumen kecurigaan ini di curigainya x jika siti terbunuh dengan senjata, dan akan mecari benda yang mirip dengan cara kerja senjata tersebut maka pelaku(x) munhkin memiliki benda tersebut
/* * * * * * * * * * * * * * * * * * * * * * * * * *
* dicurigai laki-laki yang selingkuh dengan siti. *
* * * * * * * * * * * * * * * * * * * * * * * * * */
 dicurigai(X):-
motif(cemburu),
orang(X,_,m,_),
selingkuh(siti,X).% dari argumen kecurigaan ini di curigainya x jika motif pembunuhan gara-gara cemburu dan disinin korban siti selingkuh dengan sang pembunuh (X)
/* * * * * * * * * * * * * * * * * * * * * * *
* dicurigai perempuan yang selingkuh dengan *
* laki-laki yang juga selingkuh dengan siti *
* * * * * * * * * * * * * * * * * * * * * * */
 dicurigai(X):- 
 motif(cemburu),
orang(X,_,f,_),
selingkuh(X,Lakilaki),
selingkuh(siti,Lakilaki).% dari argumen kecurigaan ini di curigainya x jika motif pembunuhan gara-gara cemburu dan disinin korban siti di selingkyuhi oleh laki-laki
/* * * * * * * * * * * * * * * * * * * * * * * * * * *
* dicurigai pencopet yang mempunyai motif uang. *
* * * * * * * * * * * * * * * * * * * * * * * * * * */
 dicurigai(X):-
motif(uang),
orang(X,_,_,pencopet).% dari argument tersebut dicuriagainya X jika motif pembunuhan gara-gara uang dan beberapa yang di ketahui dari X adalah pencopet
pembunuh(Pembunuh):-
orang(Pembunuh,_,_,_),
terbunuh(Terbunuh),
Terbunuh <> Pembunuh, /* Bukan bunuh diri */
dicurigai(Pembunuh),
ternodai(Pembunuh,Zat),
ternodai(Terbunuh,Zat).%disini adalah subgoal kecurigaan dari zat yang terdapat pada korban, pembunuh, dan ciri dari pembunuh adalah orang
GOAL
 pembunuh(X).% X merupakan Pembunuh. 
 /*sebelum di temukannya sang pembunuh atau mencari goal, program akan mencari segala kejadian yang dibunuh, motif dan alat yang kemungkina di gunakan dll
   Dari argument pembunuh terdapat beberapa pernyataan persyaratan / subgorl  dan program akan melakukan unifikasi terhadap
   pernyataan tersebut.maka program akan mencari fakta orang yang mengetahui pembunuh dalam kasus tersebut.
   Pernyataan yang di dapat adalah budi.
  


 
 
 