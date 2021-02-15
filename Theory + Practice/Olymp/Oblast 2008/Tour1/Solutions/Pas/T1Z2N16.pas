{Конофальский Захар Петрович, Жодино, 11 Класс, задача 2}
var a:array[0..50] of longint;
    n,i,k:longint;
    p:boolean;

begin
assign(input,'input.txt');
assign(output,'output.txt');
reset(input);
rewrite(output);

readln(n,k);
p:=true;
for i:=1 to n do
read(a[i]);


if n=1
 then begin writeln(0); p:=false; end;

for i:=1 to n do
if a[i]>k
 then p:=false;
if p=true
 then writeln(0);

end.
