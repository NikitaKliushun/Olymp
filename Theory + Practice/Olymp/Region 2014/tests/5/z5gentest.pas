Program z5gen;
var
  n, i, x, y : int64;
  f1,f2 : text;
begin
  assign(f2,'input.txt');
  rewrite(f2);
  n:=9;
  x:=random(9)+1;
  y:=random(9)+1;
  for i:=1 to n-1 do
    begin
      x:=x*10+random(10);
      y:=y*10+random(10);
    end;
  writeln(f2,x);
  writeln(f2,y);
  close(f2);
end.