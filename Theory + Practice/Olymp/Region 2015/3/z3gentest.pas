program z3gentest;
var
  n, k, i, x, max : longint;
  f1, f2 : text;
begin
  assign(f1,'input.txt'); rewrite(f1);
  n := 20;
  writeln(f1,n);
  for i := 1 to n do
    begin
      write(f1, random(i)+1);
      if i<n then write(f1,' ');
    end;
  
  close(f1);
end.