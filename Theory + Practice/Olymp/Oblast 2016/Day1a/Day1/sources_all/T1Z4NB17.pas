var
p:array[1..2000,1..2000] of longint;
a:array[1..2000,1..2000] of integer;
n,m,i,j,k,c,min,min1:longint;
begin
assign(input,'input.txt');
reset(input);
assign(output,'output.txt');
rewrite(output);
readln(n,m);
min:=100000000;
min1:=min;
for i:=1 to n do
 for j:=1 to m do
 begin
 read(a[i,j]);
 if p[i,a[i,j]]=0
  then begin k:=k+1; p[i,a[i,j]]:=p[i,a[i,j]]+1; end
  else
 p[i,a[i,j]]:=p[i,a[i,j]]+1;
 end;
 i:=1;
 c:=0;
while i<=m do
 begin
 if c=1
  then k:=k-1;
 c:=0; 
 for j:=1 to n do

 if p[j,i]=0
  then begin c:=1; end;
 i:=i+1;
 end;
if c=1
 then k:=k-1; 
if k=0
 then begin
  writeln('-1');
  halt;
  end;
k:=0; 
while i<=m do
 begin
 k:=0;
 for j:=1 to n-1 do
   if a[j,i]<>a[j,i+1]
     then begin k:=1; i:=i+1; end;
 if k=0
  then begin writeln('0'); halt; end;
 i:=i+1;
 end;    
 
 
 
 
for i:=1 to m do
 for j:=1 to m do
 if a[1,i]=a[2,j]
  then 
   if abs(a[1,i]-a[2,j])<min
    then min:=abs(a[1,i]-a[2,j]);
if min=min1
 then writeln('-1')
 else writeln(min);
close(input);
close(output);
end.    