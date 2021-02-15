{Alexei Popzov Borisov}
var
n,k,kol,i,m,j,l,v,y:longint;
s:array[1..1000000]of char;
a:array[1..100000]of string;
rez:int64;
f,f1:text;
begin
assign(f,'input.txt');
assign(f1,'output.txt');
reset(f);
readln(f,n,k);
for i:=1 to n do
read(f,s[i]);
close(f);
for i:=1 to n do begin
for m:=n downto i do begin
kol:=kol+1;
for j:=i to m do
a[kol]:=a[kol]+s[j];
for l:=1 to length(a[kol]) do begin
y:=0;
for v:=1 to length(a[kol]) do begin
if a[kol][l]=a[kol][v] then
y:=y+1;
if y>k then break;
end;
if y>k then begin a[kol]:='+';a[kol]:='+';end;
end;
end;
end;
rez:=0;
for i:=1 to kol do
if a[i]<>'+' then rez:=rez+1;
rewrite(f1);
writeln(f1,rez);
close(f1);
end.
