program T1Z4NC04;
var
a,b:array[1..2000] of integer;
n,k,i,j,min:integer;
BEGIN
{Масаковский Дмитрий Владимирович, Слуцк,10 класс, Задача 4}
assign(input,'input.txt');
assign(output,'output.txt');
reset(input);
rewrite(output);

read(n,k);
for i:=1 to k do
read(a[i]);
for i:=1 to k do
read(b[i]);
min:=32000;

for i:=1 to k do
 for j:=1 to k do
    begin
 if a[i]=b[j] then
 if (abs(i-j)<min) then min:=abs(i-j);
 if a[i]=b[j] then
 if (abs(abs(i-j)-k)<min) then min:=(abs(abs(i-j)-k));
    end;
 write(min);
 close(input);
 close(output);
end.
