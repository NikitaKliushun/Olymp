{Шаханович Дмитрий Олегович, Молодечно, 9, Задача N2 "Почтальоны"}
program T1Z2N204;
uses crt;
var a,i,b,c,ab,bc,ac,nm,max,min:integer; m:array[1..100000000]of longint;t1,t2:text;
begin

assign(t1,'input.txt');
reset(t1);


nm:=1;
read(t1,a,c);
for i:= 1 to c do
if (c mod i = 0)and (i>=a) and (i mod a = 0)then begin m[nm]:= i; inc(nm);end;

assign(t2,'output.txt');
rewrite(t2);

write(t2,nm-1);

close(t1);
close(t2);
end.

