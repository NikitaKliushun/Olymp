{Шаханович Дмитрий Олегович,Молодечно,9,Задача 2}
program t2z2n204;
uses crt;
var d,sort,x,numbsort:array[1..100]of integer; i,j,t,m,n,k,g,swap,swap2,numbmax,numbmin:integer;f1,f2:text;
begin
assign(f1,'input.txt');
assign(f2,'output.txt');
reset(f1);
rewrite(f2);


read(f1,n,k);
for i:= 1 to n do
read(f1,d[i]);



for i:= 1 to n do
begin
sort[i]:=d[i];
numbsort[i]:=i;
end;

for j:=1 to n-1    do
for  i:=1 to n-j do
if sort[i]>sort[i+1]then begin swap:= sort[i];sort[i]:=sort[i+1];sort[i+1]:=swap;swap2:=numbsort[i];numbsort[i]:=numbsort[i+1];numbsort[i+1]:=swap2;end;

numbmax:=1;numbmin:=k;
g:=10000;        m:=numbsort[k]-numbsort[1];
for i:= 1 to n do
for j:= 1 to n do
if (numbsort[j]-numbsort[i]+1 >= k)and(d[numbsort[j]]-d[numbsort[i]]< g) and (d[numbsort[j]]-d[numbsort[i]]>0)
then begin m:=numbsort[j]-numbsort[i]+1; g:=d[numbsort[j]]-d[numbsort[i]];;numbmax:=numbsort[j];numbmin:=numbsort[i];  end;

 write(f2,m);
for i:= 1 to m do
writeln(f2,numbsort[m]);

close(f1);
close(f2);
end.
