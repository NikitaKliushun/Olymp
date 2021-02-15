{Zhdanovich Egor Dmitrievich,Minsk,11',N2}
program T1Z2N49;
var
a:array[1..10000] of longint;
n,k,i,j,l,m,sum,v,kol,n1,n2:longint;
f1:text;
begin
v:=0;
assign(f1,'input.txt');
reset(f1);
readln(f1,n,k);

for i:=1 to n do
 read(f1,a[i]);
close(f1);
sum:=0;

for i:=1 to n do
 sum:=sum+a[i];

for i:=1 to n do
 if a[i]>=k then v:=v+1;

for l:=1 to n-2 do
 for i:=1 to n-l do
 begin
  for m:=i to i+l-1 do
   kol:=kol+a[m];
  for j:=i+l to n do
  begin
   n1:=kol+a[j];
   n2:=sum-n1;
    if (n2>=k) and (n1>=k) then v:=v+1;
  end;
  kol:=0;
 end;




assign(f1,'output.txt');
rewrite(f1);
writeln(f1,v);
close(f1);




end.

