Program T2Z1N32;
const
  inf = 'input.txt';
  outf = 'output.txt';
var
  i,j,n,s,sk,ss : longint;
  a: array [1..10000] of longint;

procedure vvod;
begin
  assign(input,inf);
  reset(input);
  readln (n);
  for i := 1 to n do read(a[i]);
  close(input);
end;

procedure sort;
var
  i,j,x: longint;
begin
  for i := 1 to n - 1 do
  for j := i + 1 to n do
  begin
    if a[i] < a[j] then
    begin
      x := a[i];
      a[i] := a[j];
      a[j] := x;
    end;
  end;
end;

procedure resh;
begin
  sort;
  for i := 1 to n div 2 do ss := ss + a[i];
  for i := n div 2 +1 to n do sk := sk + a[i];
  s := ss - sk;
end;

procedure vivod;
begin
  assign(output,outf);
  rewrite(output);
  write(s);
  close(output);
end;

begin
  vvod;
  resh;
  vivod;
end.