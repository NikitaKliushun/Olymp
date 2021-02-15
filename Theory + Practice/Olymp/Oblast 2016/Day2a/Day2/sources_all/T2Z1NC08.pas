{Курашевич Максим Сергеевич г.Солигорск 11 класс 1 задача}
Program T2Z1NC08;
var a:array [1..100000] of integer;
m,w,b,y,l,k,t1,s,i,b1:integer;
f1,f2:text;
begin
Assign(f1,'input.txt');
Reset(f1);
Assign(f2,'output.txt');
Rewrite(f2);
Read(f1,m,w);
for i:=1 to m do
  read(f1,a[i]);
read(f1,s,b,y);
s:=s-1;
l:=0;
for i:=1 to m do
begin
  k:=a[i]+s;
  t1:=y+s;
  b1:=t1 mod w;
  if b1=b then l:=l+1;
  if (b1=0) and (s=0) then l:=l+1;
  s:=k mod w;
end;
write(f2,l);
close(f1);
close(f2);
end.