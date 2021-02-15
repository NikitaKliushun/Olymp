//Колпак Илья Сергеевич, г. Дзержинск, 11"А", задача №1
program z_1;
var a,b,c:array[1..1000] of longint;
    n,k,res,r,m,i,j,p,t,s:longint;
    f1,f2:text;
begin
assign(f1,'input.txt');
reset(f1);
assign(f2,'output.txt');
rewrite(f2);
read(f1,n,k);
for i:=1 to n do
  read(f1,a[i]);
for i:=1 to n-1 do
  for j:=1 to n-i do
    if a[j]>a[j+1] then begin
                          t:=a[j];
                          a[j]:=a[j+1];
                          a[j+1]:=t;
                        end;
for i:=1 to n do begin
  if a[i]=1 then r:=r+1;
  if a[i]=2 then p:=p+1;
  end;
r:=r div k;
p:=p div k;
res:=r+p;
write(f2,res,' ');
writeln(f2);
for i:=1 to r do
  write(f2,1,' ');
for i:=1 to p do
  write(f2,2,' ');
  close(f1);
  close(f2);
  end.
