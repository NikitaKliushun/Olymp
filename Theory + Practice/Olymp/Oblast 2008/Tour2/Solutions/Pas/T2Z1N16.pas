{Конофальский Захар Петрович, Жодино, 11 класс, задача 1}
var a:array[1..100] of longint;
    n,i,j,t:longint;
    s:int64;
begin
assign(input,'input.txt');
reset(input);
assign(output,'output.txt');
rewrite(output);
readln(n);

for i:=1 to n do
read(a[i]);


for i:=1 to n-1 do
 for j:=1 to n-i do
  if a[j]<a[j+1]
   then begin t:=a[j]; a[j]:=a[j+1]; a[j+1]:=t; end;

for i:=1 to trunc(n/2) do
 begin
  s:=s+a[i]-a[n-i+1];
 end;

writeln(s);

end.