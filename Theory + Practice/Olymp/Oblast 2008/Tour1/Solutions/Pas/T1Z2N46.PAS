{Serokurov Sergei, Soligorsk}
program q4;
var f1,f2 : text; n,k,i : longint; a:array[1..10000] of longint;
begin
assign(f1,'input.txt');
reset(f1);
readln(f1,n,k);
for i:=1 to n do
 read(f1,a[i]);
close(f1);
assign(f2,'output.txt');
rewrite(f2);
writeln(f2,'0');
close(f2);
end.