//Иванов Денис Сергеевич,минский район,11 ,z2
program T2Z2ND03;
var f1,f2:text;
i,m,k,z,t:longint;
begin
assign(f1,'input.txt');
reset(f1);
assign(f2,'output.txt');
rewrite(f2);
k:=1;
readln(f1,m);
t:=m;
while z=0 do
begin
for i:=1to t do
begin
if i*i*i=m then
begin
write(f2,k);
z:=1;
end;
end;
k:=k+1;
m:=m+t;
end;
close(f1);
close(f2);
end.



