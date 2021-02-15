Program T1Z3NB04;
var a:array [1..100000] of integer;
    b:array [1..100000] of integer;
    c:array [1..100000] of integer;
n,m,i,a1,b1,j,d,d1:integer;
f1,f2:text;
begin
Assign(f1,'input.txt');
Reset(f1);
Assign(f2,'output.txt');
Rewrite(f2);
i:=0; b1:=0; j:=0; d:=0; d1:=0;
read(f1,n,m);
for i:=1 to n do
  read(f1,a[i]);
for i:=1 to m do
  read(f1,b[i]);
for i:=1 to n do
begin
  if i mod 2=1 then for j:=1 to a[i] do
                      a1:=a1*10+1;
  if i mod 2=0 then for j:=1 to a[i] do
                      a1:=a1*10;
end;
for i:=1 to m do
begin
  if i mod 2=1 then for j:=1 to b[i] do
                      b1:=b1*10+1;
  if i mod 2=0 then for j:=1 to b[i] do
                      b1:=b1*10;
end;
if a1>b1 then d:=a1 xor b1
         else d:=b1 xor a1;
d1:=d;
n:=0;
while d1<>0 do
begin
  n:=n+1;
  d1:=d1 div 10
end;
for i:=n downto 1 do
begin
  c[i]:=d mod 10;
  d:=d div 10;
end;
m:=1;
for i:=2 to n do
begin
  if c[i]=c[i-1] then m:=m+1
                 else begin
                           write(f2,m,' ');
                           m:=1;
                      end;
end;
write(f2,m);
end.