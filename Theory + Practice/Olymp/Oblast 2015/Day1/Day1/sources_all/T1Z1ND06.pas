//Атрохов Антон Анатольевич Солигорск. Задача 1
program t1z1nd06;
var a,b:array[1..10000] of byte;
    n,i,j,m:integer;
    k,kk,kl,k1:longint;
    f1,f2:text;
begin
assign(f1,'input.txt');
assign(f2,'output.txt');
reset(f1);
rewrite(f2);
read(f1,k,n);
for i:=1 to k do read(f1,a[i]);
m:=1;
for i:=1 to k do
 begin
 kl:=0;
 for j:=1 to k do if i=a[j] then kl:=kl+1;
 k1:=kl div n;
  kk:=kk+k1;
  while k1<>0 do
   begin
   b[m]:=i;
   m:=m+1;
   k1:=k1-1
   end;


 end;
writeln(f2,kk);
for i:=1 to kk do write(f2,b[i],' ');
close(f2);
close(f1);
end.
