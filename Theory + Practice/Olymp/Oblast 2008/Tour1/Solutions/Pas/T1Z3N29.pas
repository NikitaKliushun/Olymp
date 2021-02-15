{Процкевич александр г. Копыль 3 задача}
program fghjgh;
var
numb,y,n,m,i,j,h,k,l,x:word;
p,o:boolean;
a:array [1..65535] of word;
b:array [1..65535] of word;
c:array [1..65535] of word;
begin
k:=1;
p:=false;
assign (input,'input.txt');
reset(input);
readln (n,m);
for i:=1 to m do
read (a[i]);
close(input);
assign (output,'output.txt');
rewrite(output);
for i:=1 to n do
b[i]:=i;
for i:=1 to m do
begin
for j:=1 to n do
if a[i]=b[j] then write (j,' ');
x:=b[1];
b[1]:=b[j];
for h:=2 to n do
begin
y:=b[h];
b[h]:=x;
x:=y;
end;
end;
close(output);
end.
