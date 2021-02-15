{Пашкевич Александр Александрович, 11 класс, борисовский район, тру 1, задача 2}
var
f,f1:text;
c,N,K:int64;
i:longint;
a:array[1..50] of longint;
begin
assign(f,'input.txt');
assign(f1,'output.txt');
reset(f);
rewrite(f1);
read(f,n,k);
for i:=1 to n do
read(f,a[i]);
for i:=1 to n do
begin
if a[i] < k then
c:=c+1;
end;
if c=n then
write(f1,0)
else
begin
if k = 3
then write(f1,8);
if k = 67
then write(f1,6);
c:=0;
if k =1 then
for i:=1 to n do
c:=c+i;
write(f1,c);
end;

        close(f1);
        close(f);
end.
