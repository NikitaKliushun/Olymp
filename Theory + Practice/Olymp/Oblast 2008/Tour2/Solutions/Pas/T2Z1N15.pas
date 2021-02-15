{Косик Иван, г. Воложин}
program T2Z1N15;
var
  N,i,j:byte;
  a:array[1..100] of int64;
  x,s,s2:int64;
begin
  assign(input,'input.txt');
  reset(input);
  assign(output,'output.txt');
  rewrite(output);
  read(N);
  for i:=1 to N do
    read(a[i]);
  for i:=1 to N do
    for j:=1 to N-1 do
      if a[j]>a[j+1]
        then
        begin
          x:=a[j];
          a[j]:=a[j+1];
          a[j+1]:=x
        end;
  s:=0;
  for i:=N downto N div 2+1 do
    s:=s+a[i];
  s2:=0;
  for i:=1 to N div 2 do
    s2:=s2+a[i];
  write(s-s2);
  close(input);
  close(output)
end.
