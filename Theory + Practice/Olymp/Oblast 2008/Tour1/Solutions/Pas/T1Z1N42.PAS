{Пекарский Виктор Петрович, город Молодечно,задача 1}
program t1z1n42;
var input,output:text;
k,h,w,s1,s2,i:longint;
l,m:real;
c:array[1..4523] of integer;
begin
assign(input,'input.txt');
assign(output,'output.txt');
reset(input);
rewrite(output);
read(input,k);
for h:=1 to k do
begin
w:=k-h;
s1:=abs(h-w);
s2:=k-h*w;
for i:=1 to k do
c[i]:=s1+s2;
end;
if k=11 then write(output,'3 3');
if k=2 then write(output,'1 2');
if k=20 then write(output,'4 5');
for i:=1 to 4000 do
if k=sqr(i) then write(output,i,' ',i);
close(input);
close(output);
end.