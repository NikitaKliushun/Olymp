program zz;
 var a:array [1..40000,1..40000] of byte;
     k,n,m,i,j,x,y:longint;
     f:text;
procedure proc(var k:longint);
var j:longint;
begin
i:=1;
while i<=n-1 do
 begin
  j:=i+1;
  while j<=n do
   begin
   if a[i,j]=0
    then inc (k);
   inc(j,2);
   end;
  inc(i);
 end;
end;
procedure inp;
begin
assign(f,'input.txt');
reset(f);
read(f,n,m);
for i:=1 to m do
 begin
  readln(f,x,y);
  if x<y
   then a[x,y]:=1
   else a[y,x]:=1;
 end;
close (f);
end;
procedure outp(k:longint);
var j:longint;
begin
assign(f,'output.txt');
rewrite(f);
writeln(f,k);
close(f);
end;
begin
inp;
proc(k);
outp(k);
end.
