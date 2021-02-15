var h,b,f:array[1..100000000] of longint;
    max,i,j,n,m,k,k1:integer;
    f1,f2:text;

begin
assign(f1,'input.txt');
reset(f1);
 read(f1,m,n);
 for i:=1 to m do
  read(f1,h[i]);
 for i:=1 to n do
  read(f1,b[i]);
 close(f1);
k:=1;
k1:=1;
for i:=1 to m do
 if h[i]=h[i+1] then k:=k+1;
for i:=1 to n do
 if b[i]=b[i+1] then k1:=k1+1;
assign(f2,'output.txt');
rewrite(f2);
if (k1<>n) and (k=m) then write(f2,-1);
close(f2);


end.
