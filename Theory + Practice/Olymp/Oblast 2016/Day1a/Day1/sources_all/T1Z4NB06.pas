{Галуза Вадим Александрович
     T1Z4NB06}
var
n,i,a,x,x1,x2,d,m,k,j:longint;
begin
assign(input,'input.txt');
assign(output,'output.txt');
reset(input);
rewrite(output);
readln(n);
read(m,k);
for i:=1 to m do
for j:=1 to k do
read(a);
while x1=0 do
begin
Randomize;
x1:=random(((m+k) div 2)+ abs(m-k));
end;
while (x2=0)and(x2+x1<=n) do
begin
Randomize;
x2:=random(((m+k) div 2)+ abs(m-k));
end;
while d=0 do
begin
Randomize;
d:=random(2);
end;
if d=2 then x:=x2
       else x:=x1;
writeln(x);
close(input);
close(output);
end.
