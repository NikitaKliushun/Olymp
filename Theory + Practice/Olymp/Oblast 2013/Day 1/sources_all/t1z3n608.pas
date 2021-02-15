var m,n,i,j,q,w,y,s:integer;
    a:array[1..401,1..401] of integer;
begin
assign(f1,'input.txt');
reset(f1);
assign(f2,'output.txt');
rewrite(f2);
read(f1,m,n);
for i:=1 to n do
for j:=1 to m do
read(f1,a[i,j]);
for i:=1 to n do begin
for j:=1 to m do
for y:=j to m-j do
if a[i,j]=a[i,m-j+1] then if a[i,j+y]=a[i,m-j-y+1] then 
s:=s+1;

 end;
write(f1,s);
close(f1);
close(f2);
end.