{Пекарский Виктор Петрович,город Молодечно,11 класс, задача 1}
program t2z1n42;
var input,output:text;
a:array[1..100] of longint;
i,n,j,s,k,max,nmax,c,v:integer;
begin
assign(input,'input.txt');
assign(output,'output.txt');
reset(input);
rewrite(output);
read(input,n);
for i:=1 to n do
read(input,a[i]);
for j:=n downto 2 do
begin
max:=a[1];
nmax:=1;
for i:=1 to j do
begin
if a[i]>=max then
 begin
  c:=max;
  max:=a[i];
  nmax:=i ;
  end;
  end;
  a[nmax]:=a[j];
  a[j]:=max;
 end;
 k:=0;
for i:=1 to (n div 2) do
k:=k+a[i];
s:=0;
for i:=(n div 2)+1 to n do
s:=s+a[i];
v:=s-k;
write(output,v);
close(input);
close(output);
end.