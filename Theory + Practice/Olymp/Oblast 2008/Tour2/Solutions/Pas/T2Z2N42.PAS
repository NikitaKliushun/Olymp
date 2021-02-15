{Пекарский Виктор Петрович,город Молодечно,11 класс, задача 2}
program t2z2n42;
var input,output:text;
s:string;
n,k,c,i,d,j:longint;
begin
assign(input,'input.txt');
assign(output,'output.txt');
reset(input);
rewrite(output);
read(input,n);
read(input,k);
for i:=1 to n do
read(input,s[i]);
for i:=1 to n do
begin
c:=0;
for j:=i to n do
begin
if s[i]<>s[j] then inc(d);
if s[i]=s[j] then inc(c);
if k=c then inc(d);
end;
end;
write(output,d);
close(input);
close(output);
end.