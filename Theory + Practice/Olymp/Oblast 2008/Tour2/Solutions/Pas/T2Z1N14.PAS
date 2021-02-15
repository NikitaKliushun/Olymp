{Popzov Alexei Borisov}
var
a:array[1..100]of longint;
i,j,max:longint;
n:byte;
s:int64;
f,f1:text;
begin
assign(f,'input.txt');
assign(f1,'output.txt');
reset(F);
readln(f,n);
for i:=1 to n do
read(f,a[i]);
close(f);
for i:=1 to n do begin
max:=a[i];
for j:=i to n do begin
if a[j]>max then begin
max:=a[j];
a[j]:=a[i];
a[i]:=max;
end;
end;
end;
for i:=1 to n div 2 do
s:=s+a[i];
for i:=(n div 2)+1 to n do
s:=s-a[i];
rewrite(f1);
writeln(f1,s);
close(f1);
end.
