program T2Z2NB18;

var
  t1, t2: text;
  m, n, i, j, k, s, min: integer; h, b, p: array[1..3000] of longint; pmin: longint;

begin
  
  assign(t2, 'output.txt');
  rewrite(t2);
  assign(t1, 'input.txt');
  reset(t1);
  readln(t1, m, n);
  for i := 1 to m - 1 do
    read(t1, h[i]); readln(t1, h[m]);
  for i := 1 to n do
    read(t1, b[i]);
  i := 1; j := 2; s := 1;
  while (k <> 1) or (k <> -1) do
    if h[1] + b[i] < h[2] + b[j] then begin k := 1; end;
  if j = n then begin j := 1 + s; s := s + 1; i := i + 1; end;
  if i = n then begin k := -1; end;
  if k = 1 then writeln(t2, i, ' ', j); if k = -1 then writeln(t2, k);
  close(t1);
  close(t2);
end.