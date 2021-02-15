var
a:array[1..1001] of integer;
b:array[1..1001] of integer;
i,j,k,c,x,n,max,r,y,sum:longint;
begin

assign(input,'input.txt');
reset(input);
assign(output,'output.txt');
rewrite(output);
readln(n,r);

for y:=1 to r do
if y mod 2=1
 then
 begin


for i:=1 to n do
 read(a[i]);
 b[1]:=1;
for i:=1 to n do
 for j:=i+1 to n do
 if a[j]>a[i]
  then if b[j]<b[i]+1
        then b[j]:=b[i]+1
  else if b[j]<b[i]
        then b[j]:=1;


for i:=1 to n do
 if b[i]>max
  then max:=b[i];
 sum:=sum+max;
 end;





writeln(sum);



 close(input);
 close(output);




        end.