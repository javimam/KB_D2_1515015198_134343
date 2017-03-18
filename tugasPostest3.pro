
 
 
 domains  %------------------------------------------------------------------>tempat type data yang di pake
	nmmatkul, nama, nilai = symbol %------------------------------------->objek nmmatkul,nama,nilai memiliki tipe data symbol

predicates %----------------------------------------------------------------->tempat pendeklarasian
	nondeterm matkul(nmmatkul,nama,nilai) %------------------------------>nondeterm artinya fkta ini memiliki lebih dari 1 kemungkinan, didalam fakta matkul ada nmmatkul,nama,nilai.

clauses  %FAKTA-------------------------------------------------------------->ai = matakuliah Artificial Intellegent)  so = matakuliah Sistem Oprasi

matkul(ai,irfan,a).  %------------------------------------------------------->matakuliah ai diambil oleh irfan dan mendapat nilai A
matkul(ai,komeng,d). %------------------------------------------------------->matakuliah ai diambil oleh komeng dan mendapat nilai D
matkul(ai,dati,c). %--------------------------------------------------------->matakuliah ai diambil oleh dati dan mendapat nilai C
matkul(ai,fatima,b). %------------------------------------------------------->matakuliah ai diambil oleh fatima dan mendapat nilai B
matkul(ai,maspion,c). %------------------------------------------------------>matakuliah ai diambil oleh maspion dan mendapat nilai C
matkul(pde,ricky,e). %------------------------------------------------------->matakuliah ai diambil oleh ricky dan mendapat nilai E
matkul(pde,embang,a). %------------------------------------------------------>matakuliah ai diambil oleh embang dan mendapat nilai A
matkul(pde,salmin,d). %------------------------------------------------------>matakuliah ai diambil oleh salmin dan mendapat nilai D
matkul(pde,vina,b). %-------------------------------------------------------->matakuliah ai diambil oleh vina dan mendapat nilai B
matkul(pde,sondang,c). %----------------------------------------------------->matakuliah ai diambil oleh sondang dan mendapat nilai C
matkul(so,pamuji,d). %------------------------------------------------------->matakuliah ai diambil oleh pamuji dan mendapat nilai D
matkul(so,luki,e). %--------------------------------------------------------->matakuliah ai diambil oleh luki dan mendapat nilai E
matkul(so,sadek,b). %-------------------------------------------------------->matakuliah ai diambil oleh sadek dan mendapat nilai B
matkul(so,yusida,a). %------------------------------------------------------->matakuliah ai diambil oleh yusida dan mendapat nilai A
matkul(so,eka,a). %---------------------------------------------------------->matakuliah ai diambil oleh eka dan mendapat nilai A

goal %----------------------------------------------------------------------->solusi dari fakta2 di clauses
matkul(ai,Nama,_);nl, %------------------------------------------------------>menampilkan mahasiswa yang mengambil matakuliah AI
matkul(_,Tdklulus,d); matkul(_,Tdklulus,e);nl, %----------------------------->menampilkan nama mahasiswa yang tidak lulus dengankriteria yang telah di tentukan
matkul(_,Lulus,a); matkul(_,Lulus,b);matkul(_,Lulus,c);nl, %----------------->menampilkan nama mahasiswa yang lulus dengankriteria yang telah di tentukan
matkul(Matkul,_,_);nl, %----------------------------------------------------->menampilkan semua matakuliah 
matkul(_,Nama,_). %---------------------------------------------------------->menampilkan nama-nama mahasiswa