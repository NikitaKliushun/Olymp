//The 1st task, Lebedev Daniil, Borisov, the 9th form
program zzz;
var
  M, W, s, b, t, i, j, kol, t0, k: longint;
  D, PR: array[1..100000] of longint;
  sum, sum0: uint64;
  f1, f2: text;
begin
  assign(f1, 'input.txt');
  reset(f1);
  assign(f2, 'output.txt');
  rewrite(f2);

  read(f1, M, W);
  for i := 1 to M do
    read(f1, D[i]);
  read(f1, s, b, t);

  kol := 0;

  if b < s then b := b + W;
  t0 := abs(b - s) + 1;
  for i := 1 to M do
  begin
    j := 1;
    while t0 < D[i] do
    begin
      PR[j] := t0; inc(j);
      t0 := t0 + W;
    end;
    t0 := t0 - D[i];
    for k := 1 to j - 1 do
      if PR[k] = t
      then inc(kol);
  end;

  write(f2, kol);

  close(f1);
  close(f2);
end.
