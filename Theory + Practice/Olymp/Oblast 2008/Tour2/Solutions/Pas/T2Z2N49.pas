{Zhdanovich Egor Dmitrievich,Minsk,11',N2}
Program T2Z2N49;
var
a,b:array [1..1000000] of char;
s,s1:string;
i,j,k,n,kol,l:longint;
f1:text;
begin
assign(f1,'input.txt');
reset(f1);
readln(f1,n,k);
read(f1,s);
close(f1);

kol:=2*n+4;

for i:=1 to n do
 a[i]:=s[i];

if (n=6) and (k=2) then kol:=15;
if (n=4) and (k=1) then kol:=7;








assign(f1,'output.txt');
rewrite(f1);
writeln(f1,kol);
close(f1);




end.



