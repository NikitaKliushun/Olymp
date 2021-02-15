{Северин Клим Михайлович,г.Вилейка,8класс,№1}
program ghi;
var m,w,s,b,t,i,j,kol,r:integer;
d:array[1..100000]of integer;
f1,f2:text;
begin
assign(f1,'input.txt');
assign(f2,'output.txt');
reset(f1);
rewrite(f2);
read(f1,m);
readln(f1,w);
for i:=1 to m-1 do
        read(f1,d[i]);
readln(f1,d[m]);
read(f1,s,b,t);
r:=s;
for i:=1 to m do begin
        for j:=1 to d[i] do begin
        if  j=t then
                if b= r mod w  then inc(kol);
        inc(r);
        end; end;
write(f2,kol);
close(f1);
close(f2);
end.
