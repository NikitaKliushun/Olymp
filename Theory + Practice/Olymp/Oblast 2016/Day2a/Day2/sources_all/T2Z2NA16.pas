program t2z2na16;
label 1,2;
var a,p:array[1..3000] of longint;
    n,m,i,j,q,e1,e2,e3:longint;
begin
assign(input,'input.txt');
assign(output,'output.txt');
reset(input);
rewrite(output);
readln(n,m);
for i:=1 to n do read(a[i]);
readln;
for i:=1 to m do read(p[i]);
q:=1;
while q<=(m-n+1) do
 begin
 for i:=q+1 to m do
  begin
  for j:=i+1 to m do

  begin
  e1:=a[1]+p[q];
  e2:=a[2]+p[i];
  e3:=a[3]+p[j];
  if (e1<e2) and (e2<e3) then goto 1;

  end;

  end;
 q:=q+1;
end;
write(-1);
goto 2;
1:write(q,' ',i,' ',j);
2:close(output);
close(input);
end.
