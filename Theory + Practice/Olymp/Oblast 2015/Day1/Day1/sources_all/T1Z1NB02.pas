const
  MAXN=100009;
var
  f1, f2:text;
  n, k, i, j, tn, tc, sweets:longint;
  a:array[1..MAXN] of byte;
  types:array[1..109] of longint;
  b:array[1..109] of byte;

Procedure qsort(l, r:longint);
var
  k, m:byte;
  i, j, mid:longint;
Begin
  i:=l;
  j:=r;
  mid:=(r+l) div 2;

  while (a[i]<a[mid]) do
    inc(i);
  while (a[j]>a[mid]) do
    dec(j);

  k:=a[i];
  a[i]:=a[j];
  a[j]:=k;

  inc(i);
  dec(j);

  if i<mid then
    qsort(i, mid);
  if j>mid then
    qsort(mid, j);
End;

BEGIN
  assign(f1, 'input.txt');
  reset(f1);
  assign(f2, 'output.txt');
  rewrite(f2);

  readln(f1, n, k);
  for i:=1 to n do
    read(f1, a[i]);

  qsort(1, n);

  for i:=1 to n do
    types[i]:=0;
  sweets:=0;

  tn:=1;
  tc:=a[1];

  i:=1;
  while i<=n do begin
    while (a[i]=tc) and (i<=n) do begin
      inc(types[tn]);
       inc(i);
    end;
    types[tn]:=types[tn] div k;
    b[tn]:=tc;
    sweets:=sweets+types[tn];
    inc(tn);
    tc:=a[i];
  end;

  if types[tn]=0 then
    dec(tn);

  writeln(f2, sweets);
  if sweets>0 then
    for i:=1 to tn do
      for j:=1 to types[i] do
        write(f2, b[i], ' ');

      writeln(f2, ' ', sizeof(longint));


  close(f1);
  close(f2);
END.
