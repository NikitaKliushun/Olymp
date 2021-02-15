//Tonko Kseniya, Kopyl, 9, Z4
var
a,s:text;
N,K,i,j,w,e,o,p,u:longint;
z,x:array[1..2000,1..2000]of longint;
v,c:array[1..2000]of longint;
begin
assign(a,'input.txt');
assign(s,'output.txt');
reset(a);
read(a,N,K);
rewrite(s);
for i:=1 to N do
for j:=1 to K do
read(a,z[i,j]);
w:=0;
e:=0;
u:=0;
for i:=1 to N do
for j:=1 to K do
x[i,j]:=0;
for i:=1 to K do
c[i]:=0;
for i:=1 to K do
v[i]:=z[1,i];
j:=1;
for i:=1 to K do
for j:=1 to N do
begin
if v[i]<>z[j,i]
then
c[i]:=1;
end;
for i:=1 to K do
if c[i]=0
then
begin
u:=1;
write(s,w);
break
end;
if u=0
then
begin
for o:=1 to N do
for p:=1 to K do
x[o,z[o,p]]:=1;
for o:=1 to K do
v[o]:=x[1,o]; 
for p:=1 to K do
for o:=2 to N do
begin
if (v[p]=x[o,p]) and (v[p]>0)
then
e:=1;
end;
if e=0
then
write(s,'-1')
else
write(s,round(N/2) );
end;
close(a);
close(s);
end.
