var
f1,f2:text;
n,m:longint;
i,j,k,x,y:longint;
kol:longint;
p:boolean;
a:array[1..1000,1..1000] of byte;

begin
assign(f1,'input.txt');
assign(f2,'output.txt');
reset(f1);
rewrite(f2);

readln(f1,n,m);
for i:=1 to n do
for j:=1 to n do
if i<>j then a[i,j]:=1;


for i:=1 to m do begin
readln(f1,x,y);
a[x,y]:=2;
a[y,x]:=2;
end;
 p:=false;
kol:=((n-1)*n) div 2;


for i:=1 to n do
for j:=1 to n do
if (a[i,j]>0)  then
for k:=1 to n do
if (a[i,k]>0) and (a[k,j]>0) and (k<>i) and (k<>j) then begin

if(a[i,j]=1) then begin
a[i,j]:=0;
a[j,i]:=0;
p:=true;
end;
if (a[i,k]=1) then begin
a[i,k]:=0;
a[k,i]:=0;
p:=true;
end;
if (a[j,k]=1) then begin
a[k,j]:=0;
a[j,k]:=0;
p:=true;
end;
kol:=kol-1;
p:=false;
break;
end;
write(f2,kol-m);
close(f1);
close(f2);
end.
