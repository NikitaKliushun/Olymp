{DROZD ANDREY SERGEEVICH}
program T1Z3N03;
var N,M,i,j,t:integer;
a:array [1..65535] of integer;
b:array [1..65535] of integer;
begin
assign(input,'input.txt');
reset(input);
read(N,M);
for i:=1 to M do
begin
read(a[i]);
end;
for i:=1 to n do
begin
b[i]:=i;
end;
close(input);
assign(output,'output.txt');
rewrite(output);
for i:=1 to m do
begin
t:=b[a[i]];
write(b[a[i]],' ');
for j:=1 to n do
if b[j]<t then b[j]:=b[j]+1;
b[a[i]]:=1;
end;
close(output);
end.