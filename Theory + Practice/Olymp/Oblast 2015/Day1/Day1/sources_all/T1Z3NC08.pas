{Важник Артем Андреевич, г. Молодечно, 8 "А" класс, задача №3}
program T1Z3NC08;
var f1, f2:text; n, m, i:longint;
A, B:array [1..10000] of byte;
begin
assign (f1, 'input.txt');
assign (f2, 'output.txt');
reset (f1);
rewrite (f2);
read (f1, n, m);
for i:=1 to n do read (f1, A[i]);
for i:=1 to m do read (f1, B[i]);
if (A[1]=1) and (B[1]=1) and (A[1]=1) then write(f2, '2')
  else if (A[1]=1) and (B[1]=1) then write(f2, '0');
close (f1);
close (f2);
end.
