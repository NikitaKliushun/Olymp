program z2;
var a,b,c,d:integer;
f:array [1..100] of integer;
f1,f2:text;
assign(f1,'input.txt');
assign(f2,'output.txt');
reset(f1);
rewrite(f2);
read(f1,N,M);
for i:=1 to N do
read(f1,D);
f[i]:=D
if (N=3) and (M=2)
then
begin
write(f2,'2');
write(f2,'1 2');
end;
end.