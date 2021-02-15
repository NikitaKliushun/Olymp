 var a : array[1..400,1..400] of byte;
n, m, i, j:integer;
f1, f2 : text;
begin
assign(f1,'input.txt');
reset(f1);
assign(f2,'output.txt');
rewrite(f2);
readln(f1,n,m);
 for i := 1 to n do
  for j :=1 to m do
   read(a[i,j]);

close(f1);
close(f2);
end.
