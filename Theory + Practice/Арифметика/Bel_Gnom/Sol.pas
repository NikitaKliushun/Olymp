var
  a, b, p: array[1..100000] of longint;

procedure sort(l, r: longint);
var
  i, j, x, t: longint;
begin
  i := l;
  j := r;
  x := i + random(j - i + 1);
  x := a[p[x]] + b[p[x]];
  while (i <= j) do begin
    while (a[p[i]] + b[p[i]] > x) do inc(i);
    while (a[p[j]] + b[p[j]] < x) do dec(j);
    if (i <= j) then begin
      t := p[i];
      p[i] := p[j];
      p[j] := t;
      inc(i);
      dec(j);
    end;
  end;
  if (i < r) then sort(i, r);
  if (l < j) then sort(l, j);
end;

var
  n, i, s: longint;

begin
  assign(input, 'dwarfs.in');
  reset(input);
  assign(output, 'dwarfs.out');
  rewrite(output);
  read(n);
  for i := 1 to n do read(a[i]);
  for i := 1 to n do read(b[i]);

  for i := 1 to n do p[i] := i;
  sort(1, n);

  s := 0;
  for i := n downto 1 do begin
    if (b[p[i]] <= s) then begin
      writeln(-1);
      exit;
    end else begin
      s := s + a[p[i]];
    end;
  end;

  for i := 1 to n do write(p[i], ' ');
 close(input);
 close(output);
end.