{Важник Артём Андреевич, г. Молодечно, 9 "А" класс, з. №1}
program T2Z1NC02;
var f1, f2:text;
    m, w, s, b, t, i:longint;
    d:array [1..100000] of longint;
    ch, k:int64;
begin
  assign (f1, 'input.txt');
  assign (f2, 'output.txt');
  reset (f1);
  rewrite (f2);

  readln (f1, m, w);
  for i:=1 to m do
    read (f1, d[i]);
  readln (f1);
  read (f1, s, b, t);

  i:=1;
  if s<b then ch:=b-s+1;
  if s>b then ch:=w-s+b;
  if s=b then k:=k+1;
  while (ch>d[i]) and (i<=m) do
    begin
    ch:=ch-d[i];
    i:=i+1;
    end;
  while i<=m do
    begin
    if ch=t then k:=k+1;
    ch:=ch+w;
    while (i<=m) and (ch>d[i]) do
      begin
      ch:=ch-d[i];
      i:=i+1;
      end;
    end;

  write (f2, k);
  close (f1);
  close (f2);
end.