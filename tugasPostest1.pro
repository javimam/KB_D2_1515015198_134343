




predicates

	maling(symbol) - nondeterm (o)				%predikat dari maling	
	menangkap(symbol,symbol,symbol) - nondeterm(o,o,o) 
	mencuri(symbol,symbol) - nondeterm(i,i) 
	polisi(symbol) - nondeterm(o)
	barang(symbol) - nondeterm(o)
	
clauses
	maling(siJali).			%siJali adalah salah satu maling
	maling(siImam).			%siImam adalah salah satu maling
	
	polisi(siBambang).		%siBambang adalah salah satu polisi
	polisi(siUdin).			%siBambang adalah salah satu polisi
	
	barang(labtop).			%laptop adalah barang yang di curi
	barang(handPhone).		%handphone adalah barang yang di curi
	
	mencuri(siImam,labtop).		%siImam mencuri laptop
	mencuri(siImam,handPhone).	%siImam mencuri handPhone
	
	menangkap(X,Y,Z):-polisi(X),maling(Y),barang(Z). % ini adalah variabel polisi maling dan barang yang di curi

goal
	
	menangkap(Polisi,Maling,Barang).%rumus untuk mencari segala kemungkinan yang terjadi oleh pencuri, polisi, & barang yang akan di curi
