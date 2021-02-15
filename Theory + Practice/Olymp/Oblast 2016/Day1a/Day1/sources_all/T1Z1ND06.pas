//Tonko Kseniya, Kopyl, 9, Z1
var
N,j,i,m:longint;
a,s:text;
d,f:array[1..100]of longint;
q,e:char;
w:array[0..11,0..11]of byte;
begin
assign(a,'input.txt');
assign(s,'output.txt');
reset(a);
rewrite(s);
m:=0;
for i:=0 to 11 do
for j:=0 to 11 do
w[i,j]:=0; 
for i:=1 to 10 do
begin
for j:=1 to 10 do
begin
read(a,q);
if q='#'
then
begin
w[i,j]:=1;
m:=m+1;
end;
end;
readln(a);
end;
read(a,N);
for i:=1 to N do
begin
read(a,d[i],e,q);
if q='a'
then
f[i]:=1;
if q='b'
then
f[i]:=2;
if q='c'
then
f[i]:=3;
if q='d'
then
f[i]:=4;
if q='e'
then
f[i]:=5;
if q='f'
then
f[i]:=6;
if q='g'
then
f[i]:=7;
if q='h'
then
f[i]:=8;
if q='i'
then
f[i]:=9;
if q='k'
then
f[i]:=10;
end;
for i:=1 to N do
begin
if w[d[i],f[i]]=0
then
writeln(s,'MISS');
if w[d[i],f[i]]=1
then
if (w[d[i],f[i]-1]=0)  and (w[d[i],f[i]+1]=0) and (w[d[i]-1,f[i]]=0) and (w[d[i]+1,f[i]]=0)
then
begin
begin
w[d[i],f[i]]:=0;
m:=m-1;
end;
if m>0
then
writeln(s,'DEAD')
else
begin
writeln(s,'GAME OVER');
break;
end;
end
else
begin
writeln(s,'HIT');
m:=m-1;
w[d[i],f[i]]:=0;
end;
end;
close(a);
close(s);
end.