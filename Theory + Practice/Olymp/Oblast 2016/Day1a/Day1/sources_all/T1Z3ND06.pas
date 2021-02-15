//Tonko Kseniya, Kopyl, 9, Z3
var
s,f:text;
N,i,q,e,d:longint;
A,K:string;
begin
assign(s,'input.txt');
assign(f,'output.txt');
reset(s);
rewrite(f);
readln(s,N);
readln(s,A);
K:='';
q:=0;
e:=0;
d:=0;
for i:=1 to N*2-1 do
if i mod 2=1
then
K:=K+A[i];
for i:=1 to N-2 do
if (K[i]=K[i+1]) and (K[i]=K[i+2])
then
q:=1;
if (q=1) or (N<3)
then
write(f,N);
if (N=3) and (K[2]=K[3]) and (q=0)
then
write(f,N);
if (N>3) and (q=0)
then
begin
for i:=1 to N do
begin
if K[i]='1'
then
e:=e+1;
if K[i]='2'
then
d:=d+1;
end;
if e>d
then
write(f,e)
else
write(f,d);
end;
close(s);
close(f);
end.