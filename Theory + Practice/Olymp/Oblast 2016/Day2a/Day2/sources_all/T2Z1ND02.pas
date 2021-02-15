{Сечко Никита Дмитриевич, г. Солигорск, 9 Класс, задача 1}
program N1;
var d:array[1..100000]of longint;
    m,w,s,b,t,g,k:int64;
    i:longint;
    f:text;

begin
assign(f,'input.txt');
reset(f);
read(f,m,w);
for i:=1 to m do read(f,d[i]);
read(f,s,b,t);
close(f);
for i:=1 to m do begin
 if (d[i]>=t)and((((g+t-1)mod w)+s)mod w=b mod w) then inc(k);
 inc(g,d[i]);
end;
assign(f,'output.txt');
rewrite(f);
write(f,k);
close(f);
end.

