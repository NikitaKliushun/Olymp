{Процкевич Александр, г. Копыль}
program T2Z1N29;
var
a:array [1..100] of longint;
n:integer;
i,j:integer;
sum1,sum2,x:longint;
begin
assign (input,'input.txt');
reset(input);
readln (n);
for i:=1 to n do
read (a[i]);
close(input);
for i:=1 to n-1 do
for j:=1 to n-1 do
if a[j]>a[j+1] then
begin
x:=a[j];
a[j]:=a[j+1];
a[j+1]:=x;
end;
for i:=1 to n div 2 do
sum1:=sum1+a[i];
for i:=(n div 2)+1 to n do
sum2:=sum2+a[i];
assign (output,'output.txt');
rewrite(output);
write(sum2-sum1);
close(output);
end.
