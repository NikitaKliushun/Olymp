{Конофальский Захар Петрович, Жодино, 11 класс, задача 3}
var a:array[1..1000] of longint;
    n,m,i,d,b:longint;
    k:boolean;
begin
assign(input,'input.txt');
reset(input);
assign(output,'output.txt');
rewrite(output);
readln(n,m);
if m=1
 then writeln(0)
 else begin
k:=true;
for i:=1 to m do
 begin
 readln(d,b);
 if abs(d-b)>1
  then k:=false;
 end;
if k=true
 then writeln((n-2)*(n-1))
 else writeln(0); end;
end.



