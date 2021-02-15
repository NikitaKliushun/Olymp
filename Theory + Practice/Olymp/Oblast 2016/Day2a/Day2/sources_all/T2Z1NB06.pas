{Галуза Вадим Александрович T2Z1NB06}
var
m,w,ans,s,i,j,t,b:longint;
a:array[1..100001] of longint;
begin
assign(input,'input.txt');
assign(output,'output.txt');
reset(input);
rewrite(output);
readln(m,w);
for i:=1 to m do
read(a[i]);
readln(s,b,t);
for j:=1 to m do
for i:=1 to a[j] do
begin
if s>w then s:=1;
if (i=t)and(s=b) then inc(ans);
inc(s);
end;
writeln(ans);
close(input);
close(output);
end.