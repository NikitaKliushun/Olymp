{Пашкевич Александр Александрович, 2 тур, 11 класс, Борисовский, Задача 2}
const c=10000000;
var
t,i,z:longint;
n,k,g:int64;
f,f1,f2:text;
m,p:string;
chr:array [1..c] of char;
begin
assign(f1,'output.txt');
assign(f,'input.txt');
assign(f2,'tmp.txt');
reset(f);
rewrite(f1);
rewrite(f2);
read(f,n,k);
for i:=1 to n+2 do
read(f,chr[i]);
for i:=3 to n+2 do
chr[i-2]:=chr[i];
    g:=1;
    m:=chr[1];
for i:=1 to n do
if chr[i+1]=chr[i] then
If g<k then
begin
g:=g+1;
m:=m+chr[i+1];
end
else m:=m+''
else
begin
m:=m+chr[i+1];
g:=1;
end;
for i:=1 to length(m) do
begin
write(f2,p,' ');
p:='';
t:=1;
z:=1;
while z<i do
if m[i] = m[t] then
if z<k then
begin
z:=z+1;
t:=t+1;
p:=p+m[i];
end
else
begin
t:=t+1;
p:=p+m[i];
end
else
begin
p:=p+m[i];
z:=z+1;
  end;
  end;

   close(f2);
   reset(f2);
   read(f2,p);
   write(f1,length(p)+4);
   close(f1);
   close(f2);
   close(f);

end.