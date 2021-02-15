//Колпак Илья Сергеевич, г. Дзержинск, 11"А", задача №2
program z_2;
var r,c:array[1..1000] of integer;
    a,b,i,j,n,k:integer;
    f1,f2:text;
begin
assign(f1,'input.txt');
reset(f1);
assign(f2,'output.txt');
rewrite(f2);
r[1]:=1;
c[1]:=1;
read(f1,a,b);
n:=a+b;
for i:=1 to n-1 do
  for j:=1 to n-1 do
    if (r[i]*c[j]=n) or (r[i]+c[j]=n) then k:=k+1;
write(f2,k);
close(f1);
close(f2);
end.
