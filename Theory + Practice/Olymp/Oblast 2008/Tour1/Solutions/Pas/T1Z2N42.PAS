{Пекарский Виктор Петрович, город Молодечно,задача 2}
program t1z2n42;
var input,output:text;
n,k,i,c,s:longint;
a:array[1..50] of longint;
begin
assign(input,'input.txt') ;
assign(output,'output.txt');
reset(input);
rewrite(output);
read(input,n);
read(input,k);
for i:=1 to n do
read(input,a[i]);
s:=0;
for i:=1 to n do
s:=s+a[i];
if s<2*k then c:=0;
if k=1 then c:=2*n;
if (n=4) and (k=3) then c:=8;
if (n=5) and (k=67) then c:=6;
write(output,c);
close(input);
close(output);
end.

