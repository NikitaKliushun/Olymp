var a,b:array [1..100] of integer;
    i,j,k,t,n,s:integer;

procedure cl;
begin
close(input);
close(output);
end;

begin
assign(input,'input.txt');
reset(input);
read(n,k);
for i:=1 to n do begin
read(a[i],b[i]);
readln;
end;
s:=0;
for i:=1 to n do
inc(s,a[i]);
t:=k-s;

s:=0;
j:=1;
assign(output,'output.txt');
rewrite(output);
if t>=0 then
writeln(t)
else writeln(abs(t));

if t>0 then begin
while s<t do begin
for i:=a[j] to b[j]-1 do begin
inc(a[j]);
writeln(j);
inc(s);
end;
if a[j]=b[j] then inc(j);
end;
cl;
exit;
end;

s:=0;
j:=1;

if t<0 then begin
while s>t do begin
for i:=a[j] to b[j] do begin
inc(a[j]);
writeln('-',j);
inc(t);
end;
if a[j]=b[j] then inc(j);
end;
cl;
exit;
end;
cl;
end.