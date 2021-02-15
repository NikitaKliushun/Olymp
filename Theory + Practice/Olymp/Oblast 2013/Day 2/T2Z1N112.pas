program asd;
var N,K,A,P,i,j,d,z,l,f,g,r:integer;
    begin
Assign(input,'input.txt');
Reset(input);
Assign(output,'output.txt');
Rewrite(output);
read(N,K);
readln;
read(A,P);
z:=0;
if (N=1) and (P>=K) then
begin
z:=K-A;
writeln(z);
 for i:=1 to z do
 writeln(1);
 end;
Close(input);
Close(output);
end.