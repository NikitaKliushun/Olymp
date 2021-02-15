var n,i,k,q,j,t,w,e:integer;
    d:array[1..100000] of longint;
    c:array[1..100000] of longint;
begin
q:=123456789;
read(n,k);
for i:=1 to n do begin
read(d[i]);
c[i]:=d[i];
end;
for i:=2 to n do begin
for j:=1 to n do
if c[i]<c[j] then begin
t:=c[i];
c[i]:=c[j];
c[j]:=t;
end;end;
for i:=1 to k do begin
for j:=k+i to n do
if c[j]-c[i]<q then begin q:=c[j]-c[i];w:=j;e:=i;
end;end;
writeln(w-e,' ');
for i:=e to w do
for j:=1 to n do
if c[i]=d[j] then write(j,' ');

end.