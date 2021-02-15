//The 3rd task, Lebedev Daniil, Borisov, the 9th form
program zzz;
var
  N, K, i, j: longint;
  H, L, PR: array [1..100000] of longint;
  f1, f2: text;
begin
  assign(f1, 'input.txt');
  reset(f1);
  assign(f2, 'output.txt');
  rewrite(f2);

  read(f1, N, K);
  for i := 1 to N do
    read(f1, H[i]);

  FillChar(L, SizeOf(L), 1);


  for i := 2 to N do
    for j := 1 to N - 1 do
      if (H[j] < H[i]) and (L[j] + 1 > L[i])
      then L[i] := L[j] + 1;

  write(f2, L[N]);

  close(f1);
  close(f2);
end.