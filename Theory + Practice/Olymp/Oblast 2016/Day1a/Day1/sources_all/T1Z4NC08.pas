{Курашевич Максим Сергеевич г. Солигорск 11 класс Задача 4}
Program T1Z4NC08;
var a:array [1..6000,1..6000] of integer;
d:array [1..2000,1..2000] of integer;
i,j,n,k,max,p,m,min,min1,i1,f,j1,s1,s2:integer;
f1,f2:text;
begin
Assign(f1,'input.txt');
Reset(f1);
Assign(f2,'output.txt');
Rewrite(f2);

read(f1,n,k);
for i:=1 to n do
  for j:=1 to k do
  begin
    read(f1,a[i,j]);
    a[i,j+k]:=a[i,j];
    a[i,j+2*k]:=a[i,j];
    a[i+n,j+k]:=a[i,j];
    a[i+n,j+2*k]:=a[i,j]; 
    a[i+n,j]:=a[i,j];
  end;


for i:=1 to n do
  for j:=1 to k do
    d[i,a[i,j]]:=d[i,a[i,j]]+1;
    
for j:=1 to k do
begin  
  m:=1;
  for i:=1 to n-1 do
    if a[i,j]=a[i+1,j] then m:=m+1;
  if m=n then begin
                   write(f2,'0');
                   Close(f1);
                   Close(f2);
                   exit;
              end;
end;

for j:=1 to n do
begin
  p:=0;
  for i:=1 to n do
    if d[i,j]<>0 then p:=p+1;
  if max<p then max:=p;
end;
if max<n then begin 
                   writeln(f2,'-1');
                   close(f1);
                   close(f2);
                   exit;
              end;
min1:=k*k;
For j:=k+1 to 2*k do
begin  
  For i:=1 to n do
  begin
    for i1:=i+1 to i+n do
    begin
      s1:=0; s2:=0;
      f:=0; j1:=j; while (f<>1) and (j1<=3*k) do
                   begin
                     s1:=s1+1;
                     if a[i,j]=a[i1,j1] then f:=1;
                     j1:=j1+1;
                   end;  s1:=s1-1;
      f:=0; j1:=j; while (f<>1) and (j1>=1) do
                   begin
                     s2:=s2+1;
                     if a[i,j]=a[i1,j1] then f:=1;
                     j1:=j1-1;
                   end;  s2:=s2-1;
      if s2<s1 then min:=min+s2
               else min:=min+s1;
    end;
    if min1>min then min1:=min;
    min:=0;
  end;
end;
writeln(f2,min1);
close(f1);
close(f2);                 
end.