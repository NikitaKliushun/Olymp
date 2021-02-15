program z5;
var
  f1: text;
  a: array[0..101, 0..101] of smallint;
  n, m, v, x, y : byte;
  i, k : integer;
begin
  assign(f1, 'input.txt'); rewrite(f1);
  
  n := 1;
  m := 100;
  v := 3;
  k := (n * m - v) {- random(n*m div 2)};

  writeln(f1, n, ' ', m, ' ', v, ' ', k);

  i :=0;
  repeat
    x := random(n) + 1; y := random(m) + 1;
    //x := n div 2 + 1; y := m div 2 + 1;
    if a[x,y]=0
       then begin
              a[x,y] := 1;
              writeln(f1, x,' ',y);
              i := i + 1;
            end;
  until i = v;
  
  for i := 1 to k do
    begin
      write(f1, {99}{1}random(9)+1);
      if i<k then write(f1, ' ');
    end;
    
  close(f1);
end.