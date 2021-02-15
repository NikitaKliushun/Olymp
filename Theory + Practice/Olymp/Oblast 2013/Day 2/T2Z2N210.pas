{Величко Владислав Константинович, ГУО СШ№3 г. Солигорска, 10Б класс T2Z2N210}
program z2;
var  a:array[1..2,1..100000] of longint;
i,j,min,n,k,x,x1,l,r:longint;
BEGIN
assign(input,'input.txt');
assign(output,'output.txt');
reset(input);
rewrite(output);
readln(n,k);
for i:=1 to n do
  begin
  read(a[1,i]);
  a[2,i]:=i;
  end;
for i:=1 to n do
  for j:=1 to n-i do
    if a[1,j]>a[1,j+1] then
      begin
      x:=a[1,j];
      x1:=a[2,j];
      a[1,j]:=a[1,j+1];
      a[2,j]:=a[2,j+1];
      a[1,j+1]:=x;
      a[2,j+1]:=x1;
      end;
min:=1000000000;
for i:=1 to n-k+1 do
  if a[1,i-1+k]-a[1,i]<min then
    begin
    min:=a[1,i-1+k]-a[1,i];
    l:=i;
    r:=i-1+k;
    end;
writeln(k);
for i:=l to r do
write(a[2,i],' ');
close(input);
close(output);
END.
