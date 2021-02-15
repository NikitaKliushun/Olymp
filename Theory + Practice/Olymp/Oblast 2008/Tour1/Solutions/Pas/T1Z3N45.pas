Var
a,b,c:array [1..5000] of Integer;
i,j,h,k,x:integer;
n,m:Integer;

procedure first;
begin
assign(input,'input.txt');
reset(input);
assign(output,'output.txt');
rewrite(output);
end;

procedure last;
begin
close(input);
close(output);
end;

Begin
first;
read(n,m);
for i:=1 to m do read(b[i]);
for i:=1 to n do a[i]:=i;
j:=0;
i:=1;

while i<=m do
begin
for h:=1 to n do
if a[h]=b[i] then
 begin
 j:=j+1;
 c[j]:=h;
x:=a[h];
for k:=h downto 2 do a[k]:=a[k-1];
a[1]:=x;
end;
i:=i+1;
End;

for i:=1 to j do write(c[i],' ');

last;
End.

