program a1;
var i,j,M,N,k:integer;
    A:array[1..400,1..400] of integer;
begin
read(N,M);
assign(input,'in.txt');
reset(input);
assign(output,'out.txt');
rewrite(output);
k:=0;
for i:=1 to N do
 begin
for j:=1 to M do
read(A[i,j]);
end;
readln;
for i:=1 to N do
begin;
for j:=1 to M do
if A[i,j]=1 then k:=k=1;
end;
write(k);
close(input);
close(output);
end.


