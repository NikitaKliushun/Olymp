{Ломтев Даниил Андреевич Слуцк 11 №1}
var
 a : array [0..100] of longint;
 n, k : longint;
 sweety_max : longint;
 i, j, m : longint;

procedure debug;
var
 i, j : longint;
begin
 writeln;
 for i := 1 to sweety_max do
  if (a[i] <> 0)
   then write('(', a[i], ')[', i, ']');
 writeln;
end;

procedure solve;
var
 i, j : longint;
begin
 m := 0;
 for i := 1 to sweety_max do
  begin
   a[i] := a[i] div k;
   m := m + a[i];
  end;
end;

procedure print;
var
 i, j : longint;
begin
 writeln(m);
 for i := 1 to sweety_max do
  if (a[i] > 0)
   then for j := 1 to a[i] do
    write(i, ' ');
end;

BEGIN
 assign(input, 'input.txt');
 assign(output, 'output.txt');
 reset(input);
 rewrite(output);

 readln(n, k);
 for i := 1 to 100 do
  a[i] := 0;
 sweety_max := 0;
 for i := 1 to n do
  begin
   read(j);
   if (j > sweety_max)
    then sweety_max := j;
   inc(a[j]);
  end;

 solve;
 print;
 //debug;
 close(input);
 close(output);
END.
