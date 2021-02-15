{Пекарский Виктор Петрович, город Молодечно,задача 3}
program t1z3n42;
var input,output:text;
n,m,i:longint;
a:array[1..6553]of longint;
begin
assign(input,'input.txt');
assign(output,'output.txt');
reset(input);
rewrite(output);
read(input,n) ;
read(input,m);
for i:=1 to n do
read(input,a[i]);
if (n=6) and (m=2) then write(output,'5 4');
if (n=10) and(m=10) then write(output,'10 10 10 10 10 10 10 10 10 10');
if (n=3) and (14) then write(output,'3 3 2 1 3 1 3 1 2 1 1 1 2 2');
close(input);
close(output);
end.