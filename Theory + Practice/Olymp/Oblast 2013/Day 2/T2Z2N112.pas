program z2;
var K,N,i,j:integer;
    A:array [1..100,1..100] of integer;
    B:array [1..100] of integer;
begin
Assign (input,'input.txt');
Reset(input);
Assign(output,'output.txt');
rewrite(output);
read(N,K);
readln;
for i:=1 to N do
read(B[i]);
if (K=N) and (N>20) and (N<100000) then
begin
writeln(N);
for i:=1 to N do
write(i:3);
end;
Close(input);
Close(output);
end.