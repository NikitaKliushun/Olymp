var j,f,i,n,m,k,h:integer;
a:array[1..200000]of integer;
c:array[1..200000]of integer;
f1,f2:text;
begin
assign(f1,'input.txt'); reset(f1);
assign(f2,'output.txt'); rewrite(f2);
read(f1,n,m,k);
for i:=1 to m do
read(f1,a[i]);
for j:=1 to n do
read(f1,c[i]);
read(f1,f);
if k=1 then
for i:=1 to m do
       begin
       if (a[i]+1=f)or(c[i]=f) then
       h:=h+1;
       end; 
if k>1 then
for i:=1 to m do 
  begin
  while (a[i]<f)and(k>0) do
  a[i]:=a[i]+1;
  k:=k-1;
  if a[i]=f then
  h:=h+1;
  end;
write(f2,h); 
close(f1);
close(f2);
end.