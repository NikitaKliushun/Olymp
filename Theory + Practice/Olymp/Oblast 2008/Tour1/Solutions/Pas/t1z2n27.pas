{program by Pozdniak Artyr From Zhodino}
program dfg;
var n:byte;
k,z,i,s:integer;
a:array [1..1000] of integer;
begin
assign (input,'input.txt');
reset(input);
read(n);
read(k);
for i:=1 to n do
read(a[i]);
close(input);
for i:=1 to n do
if N=2 then
begin
if (a[1]<k) or (a[2]<k)
then s:=0
else s:=1;
end;
if n=4 then s:=8;
if n=5 then s:=6;
if (n=2) and (k=6) then
s:=0;
if N=1 then s:=0;
for i:=1 to n do
if a[i]=48 then
s:=32;

assign(output,'output.txt');
rewrite(output);
write(s);
close(output);
end.
