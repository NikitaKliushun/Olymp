//Задача № 2, Лебедев Даниил Петрович, г. Борисов, 9 класс
program zzz;
type
  BitNum = array [0..30] of byte;
var
  y, k, i, j, t: longint;
  len, sp: byte;
  it: BitNum;
  pos: array [1..100000] of BitNum;
  posl: array [1..100000] of longint;
  f1, f2: text;
function Deg(x: byte): longint;
var
  res, i: longint;
begin
  res := 0;
  if x = 0
  then res := 1
  else for i := 1 to x do
         res := 2 * res;
  Deg := res;
end;
Procedure s2tos10(i: longint);
var
  j: byte;
begin
  for j := 0 to len + 1 do
    posl[i] := posl[i] + pos[i][j] * Deg(j);
end;
begin
  assign(f1, 'input.txt');
  reset(f1);
  assign(f2, 'output.txt');
  rewrite(f2);

  read(f1, k, y);

  i := 0; len := 0;
  while y > 0 do
  begin
    it[i] := y mod 2;
    y := y div 2;
    inc(len);
  end;

  t := 1; sp := 1;
  for i := 0 to len + 1 do
    if it[i] = 1
    then for j := 1 to k do
           pos[j][i] := 1
    else begin
           pos[t][i] := 0;
           inc(t);
           for j := 1 to k do
           if j <> t
           then begin
                  case sp of
                  1: pos[j][i] := 1;
                  2: pos[j][i] := 0;
                  end;
                  inc(sp); if sp > 2 then sp := 1;
                end;

         end;

  i := 1;
  while i <= k do
  begin
    s2tos10(i);
    inc(i);
  end;

  for i := 1 to k - 1 do
    for j := i + 1 to k do
      if posl[i] = posl[j]
      then begin
             write(f2, -1);  close(f1); close(f2); halt;
           end;

  for i := 1 to k do
    write(f2, posl[i], ' ');

  close(f1);
  close(f2);
end.
