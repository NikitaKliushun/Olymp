Program z4gen;
var
  n, i : longint;
  f1,f2 : text;
begin
  assign(f2,'input.txt');
  rewrite(f2);
  n:=200000;
  writeln(f2,n);
  for i:=1 to n do
    write(f2,random(n)+1,' ');
  close(f2);
end.