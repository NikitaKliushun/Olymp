program z1;
var f:text;
    a:array[1..1000]of integer;
    i,n,m,k,num,ans:integer;
    pr:boolean;
begin
assign(f,'input.txt');
reset(f);
readln(f,n,m,k);
for i:=1 to m do
read(f,num);
for i:=1 to n do
 read(f,a[i]);
close(f);
pr:=true;
for i:=1 to n-1 do
 if a[i]=i+1 then continue
             else begin pr:=false;break; end;
if pr=true then ans:=m
           else ans:=1;
assign(f,'output.txt');
rewrite(f);
write(f,ans);
close(f);
end.