Program T1Z1NB04;
var a,b:array [1..100000] of integer;
n,k,i,m,r,p,j:integer;
f1,f2:text;
begin
Assign(f1,'input.txt');
Reset(f1);
Assign(f2,'output.txt');
Rewrite(f2);
read(f1,n,k);
i:=0; m:=0; r:=0; p:=0; j:=0;
for i:=1 to n do
  read(f1,a[i]);
for i:=1 to n do
begin
  b[a[i]]:=b[a[i]]+1;
  if m<a[i] then m:=a[i];
end;
for i:=1 to m do
  if b[i]>=k then p:=p+1;
writeln(f2,p);
for i:=1 to m do
begin
  r:=b[i] div k;
  if r<>0 then for j:=1 to r do
                 write(f2,a[i],' ');
end;
Close(f1);
Close(f2);
end.