program T1Z1NA12;{Матвиевич Егор Сергеевич}
var n,k,m,p,l,f,i,t,j:longint;
a,b:array[1..100001] of longint;
procedure swap(var x,y:longint);
begin
t:=x;
x:=y;
y:=t;
end;
begin
assign(input,'input.txt');
assign(output,'output.txt');
reset(input);rewrite(output);
readln(n,k);
for i:=1 to n do
read(a[i]);
for i:=1 to n-1 do
for j:=1 to n-i do
if a[j]>a[j+1] then
swap(a[j],a[j+1]);        l:=1;p:=1; f:=1;m:=0;a[n+1]:=101;
for i:=1 to n do
begin
if a[i]=a[i+1] then
p:=p+1 else begin
if p>=1 then begin
for j:=1 to p div k do begin
b[f]:=a[i];f:=f+1;m:=m+1; end;
l:=p div k;
p:=1;
end;
end;
end; if m>0 then begin
writeln(m);
for i:=1 to m do
write(b[i],' '); end else write(0);
close(input);close(output);
end.
