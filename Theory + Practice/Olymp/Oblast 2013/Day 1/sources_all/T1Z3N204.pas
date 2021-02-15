{Шаханович Дмитрий Олегович, Молодечно, 9, Задача N3 "Матрица"(Объект является агентом,если его представление занимаеттолько один столбец и не менее 2ух строк. )}
program T1Z3N204;
uses crt;
var i,b,j,c,ab,bc,ac,nm,t,f,m,n,z,x:integer; a:array[1..400,1..400]of integer;t1,t2:text;
begin

assign(t1,'input.txt');
reset(t1);

for i:= 1 to 400 do
for j:= 1 to 400 do
a[i,j]:=2;

b:=0;
 c:=0;
read(t1,m,n);
for j:= 1 to m do
for i:= 1 to  n do
read(t1,a[i,j]);
for j:= 1 to m-1 do
for i:= 1 to n do
for t:= j+1 to m do
for x:= 0 to trunc((t/2))-1 do
begin
if (a[i,j+x] = a[i,t-x])and(j <> t)then inc(b);
if b = trunc((t/2)) then begin inc(c);b:=0;end;
end;



assign(t2,'output.txt');
rewrite(t2);

write(t2,c);

close(t1);
close(t2);
end.
