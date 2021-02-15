{Пашкевич Александр Александрович, борисовский район, 11 класс, тур 1, задача 1}
var
f,f1:text;
K:real;
a,z,h:longint;
begin
assign(f,'input.txt');
assign(f1,'output.txt');
reset(f);
rewrite(f1);
read(f,k);
if sqrt(k) <> trunc(sqrt(k)) then
while sqrt(k)<>trunc(sqrt(k)) do
begin
k:=k-1;
a:=a+1;
h:=trunc(sqrt(k));
end
else
h:=trunc(sqrt(k));
z:=h;
while a >= h do
begin
a:=a-h;
z:=z+1
end;
write(f1,h,' ',z);
close(f);
close(f1);
end.
