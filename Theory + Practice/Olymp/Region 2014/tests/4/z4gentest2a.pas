Program z4gen2;
var
  a : array [1..200000] of longint;
  n, i ,x , y, t : longint;
  f1,f2 : text;
begin
  assign(f2,'input.txt');
  rewrite(f2);
  n:=200000;
  for i:=1 to n div 2 do
    begin
     a[i]:=i; a[n div 2 + i]:=i;
    end;
  for i:=1 to n*5 do
    begin
     x:=random(n)+1;
     y:=random(n)+1;
     t:=a[x]; a[x]:=a[y]; a[y]:=t;
    end;
  writeln(f2,n);
  for i:=1 to n do
    write(f2,a[i],' ');
  close(f2);
end.