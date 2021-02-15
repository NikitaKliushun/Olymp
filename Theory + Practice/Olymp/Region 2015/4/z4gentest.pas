program z4gentest;
label
  L1;
var
  a : array[1..1000] of byte;
  ls, n, i, j : longint;
  f1 : text;
begin
  assign(f1,'input.txt'); rewrite(f1);
  ls := 255;
  n := 1;
  for i:=1 to ls do
    a[i] := random(10);
  writeln(f1,n);
  for i:=1 to n do
    begin
      for j:=1 to ls do
        if i=1//random(3) div 2 >= 1
           then write(f1,a[j])
           else write(f1,'?');
      writeln(f1);
    end;  
  close(f1); 
end.