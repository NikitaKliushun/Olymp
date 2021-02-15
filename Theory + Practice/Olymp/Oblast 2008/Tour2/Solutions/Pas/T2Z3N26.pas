{Пашкевич Александр Александрович, 2 тур, 11 класс, Борисовский, Задача 3}
const c=100000;
var
f,f1,f2:text;
d:string;
g,y,i:longint;
N,m:int64;
a:array [1..c] of longint;
begin
assign(f,'input.txt');
assign(f1,'output.txt');
assign(f2,'tmp.txt');
reset(f);
rewrite(f1);
rewrite(f2);
read(f,n,m);
for i:=1 to m*2 do
read(f,a[i]);
g:=n div m*2;
write(f1,a[g]*4);

close(f2);
close(f);
close(f1);
end.
