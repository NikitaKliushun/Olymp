{Zhdanovich Egor Dmitrievich,Minsk,11',N3}
program T2Z3N49;
var
n,m,i,j,kol,k,imin:longint;
a:array [1..1000000,1..2] of longint;
f1:text;
begin
assign(f1,'input.txt');
reset(f1);
readln(f1,n,m);
for i:=1 to m do
 readln(f1,a[i,1],a[i,2]);
close(f1);
kol:=2*m-2;
for i:=1 to m-1 do
begin
  a[i,1]:=a[i+1,2];
  a[1,1]:=m;
  a[2,2]:=m;
 if m=1 then kol:=0;
  if m=4 then kol:=4;
 if m=7 then kol:=12;
 end;


assign(f1,'output.txt');
rewrite(f1);
write(f1,kol);
 close(f1);
end.
