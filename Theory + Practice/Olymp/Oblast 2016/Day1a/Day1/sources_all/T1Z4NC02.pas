{Важник Артём Андреевич, г. Молодечно, 9 "А" класс, з. №4}
program T1Z4NC02;
var f1, f2:text;
m:array [1..2000, 1..2000] of integer;
n, k, i, j, r, l, lt, rt:integer;
min, t:int64;
begin
  assign (f1, 'input.txt');
  assign (f2, 'output.txt');
  reset (f1);
  rewrite (f2);

  readln (f1, n, k);
  min:=200000000000;
  for i:=1 to n do
    begin
    for j:=1 to k do
      read (f1, m[i, j]);
    readln (f1);
    end;

  i:=1;
  while i<=k do
    begin
    j:=2; t:=0;
    while j<=n do
      begin
      l:=i; r:=i; lt:=0; rt:=0;
      while (m[1, i]<>m[j, l]) and (lt<k) do
          begin
          if l=1 then l:=k
            else l:=l-1;
          lt:=lt+1;
          end;
      while (m[1, i]<>m[j, r]) and (rt<k) do
          begin
          if r=k then r:=1
            else r:=r+1;
          rt:=rt+1;
          end;
      if (lt=k) or (rt=k) then break
        else if lt<rt then t:=t+lt
          else if rt<=lt then t:=t+rt;
      j:=j+1;
      end;
    if j=n+1 then if min>t then min:=t;
    i:=i+1;
    end;

  if min<>200000000000 then write (f2, min)
    else write (f2, '-1');
  close (f1);
  close (f2);
end.
