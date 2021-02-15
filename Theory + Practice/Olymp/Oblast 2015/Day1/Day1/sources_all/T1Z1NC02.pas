//Задача № 1, Лебедев Даниил Петрович, г. Борисов, 8 класс
program z1;
var
  n, k, m, i, j: longint;
  a: array [1..100] of longint;
  f1, f2: text;
begin
  assign(f1, 'input.txt');
  reset(f1);
  assign(f2, 'output.txt');
  rewrite(f2);

  read(f1, n, k);
  for i:=1 to 100 do
    a[i]:=0;
  for i:=1 to n do
  begin
    read(f1, m);
    inc(a[m]);
  end;

  m:=0;

  for i:=1 to 100 do
    if a[i]>=k then m:=m+a[i] div k;

  writeln(f2, m);

  for i:=1 to 100 do
    if a[i]>=k
    then for j:=1 to a[i] div k do
           write(f2, i, ' ');

  close(f1);
  close(f2);
end.
