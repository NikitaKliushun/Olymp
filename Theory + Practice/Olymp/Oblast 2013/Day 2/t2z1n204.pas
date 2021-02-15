{Шаханович Дмитрий Олегович,Молодечно,9,Задача 1}
program t2z1n204;
var n,k,i,m,sa,sp:integer; t1,t2:text;
    a,p:array[1..1000]of integer;
begin
assign(t1,'input.txt');
assign(t2,'output.txt');
reset(t1);
rewrite(t2);
sa:=0;sp:=0;
read(t1,n,k);
for i:= 1 to n do
read(t1,a[i],p[i]);
for i:= 1 to n do
begin
sa:=sa+a[i];
sp:=sp+p[i];
end;
m:=abs(k-sa);
writeln(t2,m);
if sa<k then
begin
for i:= 1 to n do
begin
while (a[i]<p[i])and(sa<k)do
begin
inc(a[i]);
inc(sa);
writeln(t2,i);
end;
end;
end;


if sa>k then
 begin
 for i:= 1 to n do
 begin
 while(sa>k)and(a[i]>0) do
    begin
     Dec(a[i]);
     Dec(sa);
     writeln(t2,-i);
    end;
  end;
 end;


close(t1);
close(t2);
end.
