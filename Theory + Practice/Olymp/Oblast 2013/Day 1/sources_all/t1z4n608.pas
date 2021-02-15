var f,n,m,k,i,s,j,v:integer;
    a:array[1..200000] of integer;
    c:array[1..200000] of integer;
begin
assign(f1,'input.txt');
reset(f1);
assign(f2,'output.txt');
rewrite(f2);
readln(f1,n,m,k);
for i:=1 to m do
read(f1,a[i]);
for i:=1 to n do
read(f1,c[i]);
read(f1,f);
if k=1 then if m=1 then write(f1,1);
for i:=1 to n do
for j:=1+i to n do
if c[i]=c[i+j] then for v:=1 to m do if i=a[v]then write(f1,k)else if i=f then write(f1,k)else
if k=n then if n=1 then write(f1,1);
close(f1);
close(f2);
end.    