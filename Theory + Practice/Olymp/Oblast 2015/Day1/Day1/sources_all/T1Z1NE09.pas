//трацевский алксей павлович, дзержинск,11 класс, задача
var
        a:array[1..100] of longint;
        ai, n, k, i, m: longint;
begin
assign(input,'input.txt');
assign(output,'output.txt');
reset(input);
rewrite(output);

fillchar(a, sizeof(a), 0);

read(n, k);
for i := 1 to n do
begin
        read(ai);
        inc(a[ai]);
end;



for i := 1 to 100 do
        inc( m,a[i] div k);

writeln(m);
for i := 1 to 100 do
begin
  a[i] := a[i] div k;
  if a[i] > 0 then
  while a[i] > 0 do
  begin
    write(i,' ');
    dec(a[i]);
  end;
end;


close(input);
close(output);
end.
