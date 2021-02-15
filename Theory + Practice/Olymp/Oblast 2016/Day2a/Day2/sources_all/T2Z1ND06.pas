//Tonko Kseniya, Kopyl, 9 , Z1
var
a,f:text;
M,W,i,s,b,t,o,q,e:longint;
D:array[1..100000]of longint;
begin
assign(a,'input.txt');
assign(f,'output.txt');
reset(a);
read(a,M,W);
for i:=1 to M do
read(a,D[i]);
read(a,s,b,t);
o:=0;
q:=s;
e:=1;
for i:=1 to M do
begin
while e<D[i] do
begin
if q=W
then
q:=1
else
q:=q+1;
e:=e+1;
if (e=t) and (q=b)
then
o:=o+1;
end;
e:=1;
if q=W
then
q:=1
else
q:=q+1;
end;
rewrite(f);
write(f,o);
close(a);
close(f);
end.