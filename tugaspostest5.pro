
DOMAINS
	kuliah=kuliah(symbol,symbol,symbol,integer)
	intelejensi=ai(symbol,string,integer,symbol)
	pde=pde(symbol,string,integer,symbol)
	tambahan=tambahan(symbol,string,integer,symbol)
PREDICATES
	nondeterm jenis_kuliah(kuliah)
	nondeterm intelejensi_buatan(intelejensi)
	nondeterm pde(pde)
	nondeterm mk_tambahan(tambahan)
CLAUSES
	jenis_kuliah(kuliah("intelejensi Buatan","Abdul Kadir","Manajemen Informatika",1)).%jedis mata kuliah dimana kuliah merupakan implementasi dari intelegensi buatan dll
	jenis_kuliah(kuliah("PDE","indra Yatini","Teknik Informatika",2)).%jedis mata kuliah dimana kuliah merupakan implementasi dari pde dll
	jenis_kuliah(kuliah("Teknik Antar Muka","Sigit Anggoro","Teknik Komputer",3)).%jedis mata kuliah dimana kuliah merupakan implementasi dari teknik antar muka dll
	
	intelejensi_buatan(ai("Sugeng Riyadi",pria,2002001,"Jl. Sudirman No.2, Pontianak, Kalimantan Barat")).%sugeng riyadi dosen ai, tinggal di jl. A. yani No.10, kota pontianak provinsi kalimantan barat
	intelejensi_buatan(ai("Yilia Sugondo",wanita,2002002,"Jl. A. Yani No.10, Klaten, Jawa Tengah")).%yilia sugondo dosen ai, tinggal di jl. A. yani No.2, kota klaten provinsi jawa tengah
	intelejensi_buatan(ai("Budiman Sejati",pria,2002003,"Jl. Slamet Riyadi No.45, Solo, Jawa Tengah")).%budiman sejati dosen ai, tinggal di jl. slamet riyadi No.45, kota solo provinsi jawa tengah
	
	pde(pde("Laksamana Sukardi",pria,2002004,"Jl. MT Haryono No.10,Palembang, Sumatra Selatan")).%laksamana sukardi dosen pde, tinggal di jl. Mt. haryono No.45, kota palembang provinsi sumatra selatan
	pde(pde("Rini Suwandi",wanita,2002005,"Jl. Letjen Suprapto No.12,Surabaya, Jawa Timur")).%rini suwandi dosen pde, tinggal di jl. Letjen suprapto No.12, kota surabaya provinsi jawa timur
	pde(pde("Kwik Kian Gie",pria,2002006,"Jl. WR Supratman No.100,Makassar, Sulawesi Selatan")).%kwik kian gie dosen pde, tinggal di jl. Wr. supratman No.100, kota makassar provinsi sulawesi selatan
	
	mk_tambahan(tambahan("Riri Reza",pria,2002007,"Jl.WR Mongsidi No.20,Purwokerto, Jawa Tengah")).%rini suwandi dosen mata kuliah tambahan, tinggal di jl. wr. mongsidi No.12, kota surabaya provinsi jawa timur
	mk_tambahan(tambahan("Rachel Maryam",wanita,2002008,"Jl.Otista No.112,Bandung, Jawa Barat")).%rachel maryam dosen mata kuliah tambahan, tinggal di jl. otista No.112, kota bandung provinsi jawa barat
	mk_tambahan(tambahan("Garin Nugroho",pria,2002009,"Jl.Tanjung Pura No.101,Jayapura, Papua")).%garin nugroho dosen mata kuliah tambahan, tinggal di jl. tanjung pura No.101, kota jayapura provinsi papua

GOAL
	jenis_kuliah(kuliah(Mata_kuliah,Nama_dosen,_,1)),
   	intelejensi_buatan(ai(Nama,_,No_Mhs,_));
   	jenis_kuliah(kuliah(Mata_kuliah,Nama_dosen,_,2)),
  	pde(pde(Nama,_,No_Mhs,_));
  	jenis_kuliah(kuliah(Mata_kuliah,Nama_dosen,_,3)),
   	mk_tambahan(tambahan(Nama,_,No_Mhs,_)).
   	%dia akan menampilkan mana telah di tetapkan pada goal dan seusuai permintaan dan urutan goal tersebut 
   	%dengan kata lain dia akan mencari dengan urutan yang sebelumnya telah di ketahui dan beberapa diantaranya sudah ada pada clauses yang suadah ada pada goal 
   	
