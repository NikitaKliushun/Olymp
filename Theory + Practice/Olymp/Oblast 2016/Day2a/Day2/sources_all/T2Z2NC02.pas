{Важник Артём Андреевич, г. Молодечно, 9 "А" класс, з. №2}
program T2Z2NC02;
var f1, f2:text;
    h, b:array [0..3000] of longint;
    m, n, i, j, y, min, v, k, l:integer;
    mm, r:array [1..3000] of integer;
procedure qsort(l, r:integer);
var x, o:longint;
    i, j:integer;
  begin
  i:=l; j:=r; x:=(l+r) div 2;
  while b[i]<b[x] do i:=i+1;
  while b[j]>b[x] do j:=j-1;
  if i<=j then
    begin
    o:=b[i];
    b[i]:=b[j];
    b[j]:=o;
    o:=mm[i];
    mm[i]:=mm[j];
    mm[j]:=o;
    i:=i+1;
    j:=j-1;
    end;
  if l<j then qsort (l, j);
  if r>i then qsort (i, r);
  end;
begin
  assign (f1, 'input.txt');
  assign (f2, 'output.txt');
  reset (f1);
  rewrite (f2);

  readln (f1, m, n);
  for i:=1 to m do
    read (f1, h[i]);
  readln (f1);
  for i:=1 to n do
    read (f1, b[i]);
  for i:= 1 to n do
    mm[i]:=i;
  close (f1);

  qsort (1, n);
  i:=1; v:=0; l:=1; j:=l; k:=1;
  while i<=m do
    begin
    while n-mm[l]<m-i do l:=l+1;
    min:=3001; y:=l;
      while (h[i]+b[l]<=h[i-1]+b[y]) and (l<=n) do
       l:=l+1;
    if l>n then
      begin
      write (f2, '-1');
      close (f2);
      exit;
      end;
    j:=l;
    if h[i]+b[l]>h[i-1]+b[y] then
      begin
      while (b[j]=b[l]) and (j<=n) do
        begin
        if (mm[j]<min) and (mm[j]>v) then
          min:=mm[j];
        j:=j+1;
        end;
      r[k]:=min;
      k:=k+1;
      v:=min;
      i:=i+1;
      l:=l+1;
      end;
    end;

  for i:=1 to k-1 do
    if r[i]=3001 then
      begin
      write (f2, '-1');
      close (f2);
      exit;
      end;
  for i:=1 to k-1 do
    write (f2, r[i], ' ');
  close (f2);
end.
