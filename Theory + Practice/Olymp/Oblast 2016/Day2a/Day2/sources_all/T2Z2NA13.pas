//The 2nd task, Lebedev Daniil, Borisov, the 9th form
program zzz;
var
  M, N, i, j: word;
  H, B: array [1..3000] of longint;
  f1, f2: text;
begin
  assign(f1, 'input.txt');
  reset(f1);
  assign(f2, 'output.txt');
  rewrite(f2);

  read(f1, M, N);
  for i := 1 to M do
    read(f1, H[i]);
  for i := 1 to N do
    read(f1, B[i]);

  if M = 1
  then write(f2, 1)
  else for i := 1 to N do
         for j := i + 1 to N do
           if H[1] + B[i] < H[2] + B[j]
             then begin
                    write(f2, i, ' ', j);
                    close(f1); close(f2); exit;
                  end;


  close(f1);
  close(f2);
end.
