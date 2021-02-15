{program by Pozdniak Artyr from Zodino}
program her;
var a:string;

n,k,f,v,z,l,p:longint;
i,j:longint;
u:string;
begin
f:=0;
z:=0;
assign(input,'input.txt');
reset(input);
read(n);
read(k);
read(a);
close(INPUT);
for i:=1 to n do
f:=f+i;
for i:=1 to n do
begin
j:=i+1;
p:=1;
end;
for i:=1 to n do
if a[i]=a[1] then
begin
z:=z+1;
end;
if z=n then
 f:=n+1-k;
assign(output,'output.txt');
rewrite(output);
write(f);
close(output);
end.


