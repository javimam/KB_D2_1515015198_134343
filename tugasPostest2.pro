PREDICATES
nondeterm anak(symbol,symbol)
nondeterm istri(symbol,symbol)
nondeterm pria(symbol)
nondeterm wanita(symbol)
nondeterm usia(symbol,integer)
%nondeterm cucu(symbol)
%nondeterm ibu(symbol)
%nondeterm adik(symbol)
nondeterm kakek(symbol)

CLAUSES
%cucu(A):-anak(B,C),anak(A,B).
%ibu(A):-istri(A,C),wanita(A).
%adik(A):-usia(A,C),pria(A).
kakek(A):-anak(D,E),anak(E,A).

anak(jhon, james).
anak(james, peter).
anak(sue, ann).

istri(mary, peter).
istri(ann, james).

pria(jhon).
pria(james).
pria(peter).

wanita(mary).
wanita(sue).
wanita(ann).

usia(jhon, 10).
usia(sue, 13).

GOAL
%cucu(Siapa).
%ibu(Siapa).
%adik(Siapa).
kakek(Siapa).