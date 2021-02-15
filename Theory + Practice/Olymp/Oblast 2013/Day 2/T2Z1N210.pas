{Величко Владислав Константинович, ГУО СШ№3 г. Солигорска, 10Б класс T2Z1N210}
program z1;
var a:array[1..100] of longint;
    p:array[1..100] of longint;
    b:array[1..100] of longint;
    i,j,n,k,sum:longint;
BEGIN
assign(input,'input.txt');
assign(output,'output.txt');
reset(input);
rewrite(output);
readln(n,k);
sum:=0;

for i:=1 to n do
  begin
  read(a[i]);
  readln(p[i]);
  inc(sum,a[i]);
  end;
i:=1;
if sum=k then
  begin
  write('0');
  exit;
  end;
if sum<k then
  begin
  while sum<k do
    begin
    if sum+p[i]-a[i]<=k then
      begin
      inc(sum,p[i]-a[i]);
      b[i]:=p[i]-a[i];
      end
      else
      begin
      inc(sum,k-sum);
      b[i]:=k-sum;
      end;
    inc(i);
    end;
  end;
if sum>k then
  begin
  while sum>k do
    begin
    if sum-a[i]>=k then
      begin
      dec(sum,a[i]);
      b[i]:=-a[i];
      end
      else
      begin
      dec(sum,sum-k);
      b[i]:=-(sum-k);
      end;
    inc(i);
    end;
  end;
sum:=0;
for i:=1 to n do
inc(sum,b[i]);
if sum<0 then
  begin
  writeln(abs(sum));
  for i:=1 to n do
    if b[i]<>0 then
      for j:=1 to abs(b[i]) do
        writeln(-i);
  end
  else
  begin
  writeln(sum);
  for i:=1 to n do
    if b[i]<>0 then
      for j:=1 to b[i] do
        writeln(i);
  end;
close(input);
close(output);
END.
