{Karasik Simon, Borovliany gumnasium, 11 klass, NB15}
const
  MAXN=100009;
var
  n, k:longint;
  f1, f2:text;
  let:array[1..MAXN] of longint;
  l:array[1..MAXN] of int64;
  //dp:array[0..MAXN, 0..MAXN] logint;
  //
  //
  i, j:longint;

Procedure read_data;
Begin
  read(f1, n, k);
  for i:=1 to n do
    read(f1, let[i]);
End;

Procedure solve;
Begin
  for i:=1 to n do begin
    l[i]:=1;
    for j:=1 to i-1 do if
      (let[j]<let[i]) and (l[j]+1>l[i]) then
        l[i]:=l[j]+1;
  end;
End;

Procedure res;
var
  maxp:longint;
Begin
  maxp:=1;
  for i:=2 to n do
    if l[i]>l[maxp] then
      maxp:=i;
  write(f2, l[maxp]);
End;

BEGIN
  assign(f1, 'input.txt'); reset(f1);
  assign(f2, 'output.txt'); rewrite(f2);

  read_data;
  solve;
  res;


  close(f1);
  close(f2);
END.
