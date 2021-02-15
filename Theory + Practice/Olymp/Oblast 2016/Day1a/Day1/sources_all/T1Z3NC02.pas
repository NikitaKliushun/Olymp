{Важник Артём Андреевич, г. Молодечно, 9 "А" класс, з. №3}
program T1Z3NC02;
var f1, f2:text;
a:array [1..100001] of byte;
m:array [1..100] of longint;
n, i, min:longint;
begin
  assign (f1, 'input.txt');
  assign (f2, 'output.txt');
  reset (f1);
  rewrite (f2);

  readln (f1, n);
  min:=1000000;
  for i:=1 to n do
    begin
    read (f1, a[i]);
    m[a[i]]:=m[a[i]]+1;
    end;
  for i:=1 to 100 do
    if (m[i]<>0) and (m[i]<min) then min:=m[i];

  if n-min<>0 then write (f2, n-min)
    else write (f2, n);
  close (f1);
  close (f2);
end.