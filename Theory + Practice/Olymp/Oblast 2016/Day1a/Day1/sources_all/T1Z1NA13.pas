//Задача № 1, Лебедев Даниил Петрович, г. Борисов, 9 класс
program zzz;
const
  dx: array[1..4] of shortint = (-1, 0, 1, 0);
  dy: array[1..4] of shortint = (0, 1, 0, -1);
  vert: array['a'..'k'] of byte = (1, 2, 3, 4, 5, 6, 7, 8, 9, 0, 10);
var
  field: array [0..11, 0..11] of byte;
  c, pr: char;
  s: string[10];
  N, i, j, x, y, kol: byte;
  f1, f2: text;
function Mn_Pal(x, y: byte): boolean;
var
  i: byte;
begin
  for i := 1 to 4 do
    if field[x+dx[i], y+dy[i]] = 1
    then begin
           Mn_Pal := true; exit;
         end;
  Mn_Pal := false;
end;
begin
  assign(f1, 'input.txt');
  reset(f1);
  assign(f2, 'output.txt');
  rewrite(f2);

  FillChar(field, SizeOf(field), 0);

  kol := 0;
  for i := 1 to 10 do
    begin
      readln(f1, s);
      for j := 1 to 10 do
        if Ord(s[j]) = 35
        then begin
               field[i,j] := 1;
               inc(kol);
             end;
    end;

  readln(f1, N);

  while kol > 0 do
  begin
    readln(f1, x, pr, c);
    y := vert[c];
    if field[x, y] = 1
    then begin
           dec(kol);
           if Mn_Pal(x, y)
           then writeln(f2, 'HIT')
           else if kol = 0
                then begin
                       writeln(f2, 'GAME OVER');
                       break;
                     end
                else writeln(f2, 'DEAD');
           field[x, y] := 0;
         end
    else writeln(f2, 'MISS');
  end;

  close(f1);
  close(f2);
end.
