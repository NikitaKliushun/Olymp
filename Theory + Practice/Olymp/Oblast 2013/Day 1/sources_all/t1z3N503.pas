program z3;
var n,m,i,j,k,l,kol:integer;
a:array [1..8,1..8]of byte;
f1,f2:text;
begin
assign(f1,'input.txt');
reset (f1);
assign (f2,'output.txt');
rewrite(f2);
readln(f1,n,m);
for i:=1 to n do
 for j:=1 to m do
  read(f1,a[i,j]);
   if m mod 2 = 0 then writeln(f2,(n+(m mod 2))*2)
                  else writeln(f2,(n+m)*2);
close(f1);
close(f2);
end.


