program z3;
var n,m,i,k,kol,f:integer;
a,c:array[1..1000]of byte;
f1,f2:text;
begin
assign(f1,'input.txt');
reset (f1);
assign (f2,'output.txt');
rewrite(f2);
readln(f1,n,m,k);
kol:=0;
for i:=1 to m do
read (f1,a[i]);
for i:=1 to n do
read(f1,c[i]);
readln(f1,f);
if m=1 then writeln(f2,1)
       else begin for i:=1 to n do if c[i]=f then kol:=kol+1;
                   if kol<>1 then if kol>m then writeln(f2,m)
                                          else writeln(F2,kol)
                              else writeln(f2,1); end;
close(f1);
close(f2);
end.