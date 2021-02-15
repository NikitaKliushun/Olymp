var a : array [1..101] of longint;
    n, k, i : longint;
    Sum1, Sum2 : int64;

Procedure Sort(l, r : integer);
var i, j, x, y : longint;
begin
  i := l ; j := r; x := a[(l+r) div 2];
  repeat
    while a[i] > x do
      inc(i);

    while x > a[j] do
      dec(j);

    if i <=j
      then begin
             y := a[i]; a[i] := a[j]; a[j] := y;
             inc(i); dec(j);
           end;

  until i > j;
  if l < j then Sort(l, j);
  if i < r then Sort(i, r);
end;

begin
  assign(input, 'input.txt');
  assign(output, 'output.txt');
  reset(input);
  rewrite(output);

    readln(n);
    for i := 1 to n do
      read(a[i]);

    Sort(1, n);

    sum1 := 0;
    sum2 := 0;
    for i :=1 to n do
      begin
        if i <= n div 2
          then Sum1 := Sum1 + a[i]
          else sum2 := sum2 + a[i];
      end;

    writeln(sum1 - sum2);

  close(input);
  close(output);
end.