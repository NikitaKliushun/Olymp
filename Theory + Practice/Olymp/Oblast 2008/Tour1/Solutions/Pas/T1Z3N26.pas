{Пашкевич Александр Александрович, борисовский район, 11 класс, тур 1, задача 3}
var
f4,f,f1,f2:text;
N,M,c,d,z,x:longint;
i:longint;
begin
assign(f,'input.txt');
assign(f1,'output.txt');
assign(f2,'tmp.txt');
assign(f4,'tmp2.txt');
rewrite(f2);
rewrite(f1);
reset(f);
read(f,n,m);
i:=0;
while i<n do
begin
i:=i+1;
write(f2,i,' ');
end;
close(f2);
reset(f2);
for i:=1 to m do
begin
reset(f2);
x:=0;
c:=0;
read(f,z);
while c<>z do
begin
read(f2,c);
x:=x+1;
end;
write(f1,x,' ');
close(f2);
rewrite(f4);
write(f4,z,' ');
reset(f2);
for d:=1 to x-1 do
begin
read(f2,c);
write(f4,c,' ');
end;
read(f2,c);
for d:=x to n do
begin
read(f2,c);
write(f4,c,' ');
end;
close(f2);
close(f4);
reset(f4);
rewrite(f2);
for d:=1 to n do
begin
read(f4,c);
write(f2,c,' ');
end;
close(f4);
close(f2);
end;
close(f);
close(f1);
end.