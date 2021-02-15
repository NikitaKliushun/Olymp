{Терехов Константин Николаевич г.Борисов Задача 3}
program t2z3n305;
var
a:array[1..10000,1..10000] of boolean;
n, m, i, j, k:longint;
x,y:integer;
begin
  Assign(input, 'input.txt');
  Reset(input);
  Assign(output, 'output.txt');
  Rewrite(output);

  readln(input, n, m);

  for i:=1 to m do
  begin
    readln(input, x,y);
    a[x,y]:=true;
    a[y,x]:=true;
  end;
  k:=0;
  for i:=1 to n do
  begin
    for j:=i+1 to n do
    begin
      if (not a[i,j]) and (((j-i) mod 2)=1) then
      begin
        a[i,j]:=true;
        a[j,i]:=true;
        inc(k);
      end;
    end;
  end;
  writeln(output, k);
  close(input);
  close(output);

end.
