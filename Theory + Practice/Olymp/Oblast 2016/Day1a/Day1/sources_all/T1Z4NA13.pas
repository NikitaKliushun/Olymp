//Задача № 4, Лебедев Даниил Петрович, г. Борисов, 9 класс
program zzz;
const
  INF = 1e15;
var
  disk: array [0..2000] of array [0..2000] of word;
  N, K, i, j: word;
  kol, min: uint64;
  f1, f2: text;
function InAll(x, y: word): boolean;
var
  i, j, kol: word;
begin
  kol := 0;
  for i := 1 to N do
    for j := 1 to K do
      if disk[i][j] = disk[x][y]
      then begin
             inc(kol); break;
           end;
  InAll := (kol = N);
end;
function FindNext(x, y, z: word): longint;
var
  i: word;
begin
  i := y + 1;
  while (i <= K) and (disk[x][i] <> disk[x][y]) do inc(i);
  if i > K then FindNext := -1
           else FindNext := i;
end;
function Sol(x: word): uint64;
var
  i, j, j1, a: word;
  rav, rav1: longint;
  min, kol, kola, kolb, kol0, kol1, pkol: uint64;
  change: boolean;
begin
  min := trunc(INF); pkol := trunc(INF); kol0 := 0;

  for a := 1 to N do
  begin
    kol := 0;
    rav := 1;
    while (rav <= K) and (disk[a][rav] <> x) do inc(rav);
    while rav <> -1 do
    begin
      for i := 1 to N do
      begin
        change := false;
        if i <> a
        then begin
               kol0 := 0;
               for j := 1 to K do
                 if disk[i][j] = x
                 then begin
                        kola := 0; j1 := j;
                        while (j1 <> rav) do
                        begin
                          inc(j1); inc(kola);
                          if j1 > K then j1 := 1;
                        end;
                        kolb := 0; j1 := j;
                        while (j1 <> rav) do
                        begin
                          dec(j1); inc(kolb);
                          if j1 < 1 then j1 := K;
                        end;
                        if kola < kolb
                        then kol1 := kola
                        else kol1 := kolb;
                        if (kol0 <> 0) and (kol0 > kol1)
                        then kol0 := kol1
                        else if kol0 = 0
                             then kol0 := kol1;
                        change := true;
                      end;
             end;
          if change
          then begin kol := kol + kol0; change := false; end;
        end;
      if pkol > kol then pkol := kol;
      rav := FindNext(a, rav, x);
    end;
    if min > pkol then min := pkol;
  end;

  Sol := min;
end;
begin
  assign(f1, 'input.txt');
  reset(f1);
  assign(f2, 'output.txt');
  rewrite(f2);

  readln(f1, N, K);
  for i := 1 to N do
    for j := 1 to K do
      read(f1, disk[i][j]);

  min := trunc(INF); kol := 0;
  for i := 1 to K do
    if InAll(1, i)
    then begin
           kol := Sol(disk[1][i]);
           if min > kol then min := kol;
         end;
  if min <> trunc(INF) then write(f2, min)
                       else write(f2, -1);

  close(f1);
  close(f2);
end.
