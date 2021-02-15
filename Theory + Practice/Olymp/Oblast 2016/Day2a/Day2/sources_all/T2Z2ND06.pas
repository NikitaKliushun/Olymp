//Tonko Kseniya, Kopyl, 9 , Z2
var
a,s:text;
M,N,i,q,w,j,e:longint;
H,B,r,f:array[1..3000]of longint;
begin
assign(a,'input.txt');
assign(s,'output.txt');
reset(a);
rewrite(s);
read(a,M,N);
for i:=1 to M do
read(a,H[i]);
for i:=1 to N do
read(a,B[i]);
q:=1;
w:=B[1];
for i:=1 to M do
r[i]:=0;
for i:=2 to N do
if B[i]<w
then
begin
w:=B[i];
q:=i+1;
end;
e:=1;
for i:=1 to M do
f[i]:=0;
r[1]:=w+H[1];
f[1]:=q;
if q=1
then
q:=2;
for i:=2 to M do
for j:=q to N do
if (H[i]+B[j]>r[i-1]) and (r[i]=0)
then
begin
r[i]:=H[i]+B[j];
e:=e+1;
f[e]:=j;
q:=j+1;
end;
if e=M
then
for i:=1 to M do
write(s,f[i],' ')
else
write(s,'-1');
close(a);
close(s);
end.
