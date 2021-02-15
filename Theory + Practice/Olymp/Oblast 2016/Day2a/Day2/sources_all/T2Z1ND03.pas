//////Savostin Anton Dmityevich Marjinagorskaya gimnasiya 9 klass
program zagotovka;
var f1,f2:text;
a:array[1..1000,1..1000] of integer;  /////////////////////////////////////////////
d:array[1..10000] of integer;
m,w,s,b,t,i,z,q,x,k:integer;
p:boolean;
begin
k:=0;
assign(f1,'input.txt');
assign(f2,'output.txt');
reset(f1);
rewrite(f2);

read(f1,m,w);
readln(f1);
for i:=1 to m do
 read(f1,d[i]);
readln(f1);
read(f1,s,b,t);

for i:=1 to m do
k:=k+d[i];


p:=false;
x:=1;
z:=1;
while i<=k do
 begin
 if p=false then
  begin
  for q:=s to w do
   begin
   a[i,q]:=z;
   inc(z);
   end;
  p:=true;
  end
  else for q:=1 to w do
  begin
  if z=d[x] then
    begin
    a[i,q]:=z;
    z:=1;
    inc(x);
    end
   else
    begin
    a[i,q]:=z;
    inc(z);
    end;
   end;
   inc(i);
 end;

 q:=k;
k:=0;
for i:=1 to (q div w)+1  do
 if a[i,b]=t then k:=k+1;

writeln(f2,k);
close(f1);
close(f2);
end.
