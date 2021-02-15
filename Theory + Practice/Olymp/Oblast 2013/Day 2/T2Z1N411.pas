program ds;
var A,i,f,j,N,K,P,X,M,max,maxi:integer;
b:array [1..20] of integer;
c:array [1..20] of integer;
f1,f2:text;
begin
assign(f1,'input.txt');
assign(f2,'output.txt');
reset(f1);
rewrite(f2);
read(f1,N,K);
for i:=1 to N do
begin
read(f1,A,P);
j:=j+P;
f:=P-A;
M:=M+f;
b[i]:=A;
c[i]:=P;
end;
if M=0
then M:=M+1;
max:=b[1];
writeln(f2,M);
for i:=1 to M do
begin

if b[i]<c[i]
then
begin
b[i]:=b[i]+1;
writeln(f2,i);
end
else

if b[i]=c[i]
then i:=i+1;
if i=M
then i:=1

end;


for i:=1 to N do

if c[i]>max
then
begin
max:=c[i];
maxi:=i;
end;
j:=0;
for i:=1 to N do
j:=j+c[i];
for i:= 1 to M do

if j=K
then j:=K
else
if j>K
then
begin

max:=max-1;
writeln(f2,'-',i);
end;


close(f1);
close(f2);
end.

