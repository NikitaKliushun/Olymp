{Zhdanovich Egor Dmitrievich,Minsk,11',N3}
program T1Z3N49;
var
a,b,c:array [1..65535] of longint;
i,j,k,n,m,v:longint;
f1:text;
begin
k:=0;
assign(f1,'input.txt');
reset(f1);
readln(f1,n,m);
for i:=1 to m do
 read(f1,a[i]);
close(f1);

for i:=1 to n do
 b[i]:=i;

c[1]:=a[1];
v:=b[c[1]];
for k:=c[1]-1 downto 1 do
b[k+1]:=b[k];
b[1]:=v;


for i:=2 to m do
 for j:=1 to n do
 begin
  if b[j]=a[i] then begin
                    c[i]:=j;
                    v:=b[j];
                    for k:=j-1 downto 1 do
                      b[k+1]:=b[k];
                    b[1]:=v;
                    break
                    end;

 end;
assign(f1,'output.txt');
rewrite(f1);
for i:=1 to m do
write(f1,c[i],' ');
close(f1);
end.



