program z2;
var K,N,M,i,j,l,s,g,h,q,d:integer;
    C:array [1..100,1..100] of byte;
    A:array [1..100,1..100] of integer;
    B:array [1..100] of integer;
begin
Assign (input,'input.txt');
Reset(input);
Assign(output,'output.txt');
rewrite(output);
read(N,M);
readln;
s:=M*2;
for i:=1 to s do
read(B[i]);
for i:=1 to N do
for j:=1 to N do
A[i,j]:=0;
q:=1;
d:=0;
for l:=1 to M do
begin
i:=B[q];
j:=B[q+1];
A[i,j]:=1;
A[j,i]:=1;
d:=d+2;
q:=q+2;
end;
g:=0;
if N mod 2=0 then
begin
 for i:=1 to N do
 for j:=1 to N do
 begin
 if A[i,j]=1 then A[i,j+2]:=1;
 end;
 for i:=1 to N do
 for j:=1 to N do
 begin
  if A[i,j]=1 then g:=g+1;
 end;
 g:=g-d;
 end;
writeln(g);
Close(input);
Close(output);
end.
