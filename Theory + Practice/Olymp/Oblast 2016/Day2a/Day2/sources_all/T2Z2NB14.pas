Program T2Z2NB14;
var f1,f2:text; m,n,i,j,swap:longint; min,imin:longint;
    h,b:array[1..3000,1..2] of longint;
    f: array [1..3000] of byte;
    fl: byte;
BEGIN
assign(f1,'input.txt');
reset(f1);
assign(f2,'output.txt');
rewrite(f2);
readln(f1,m,n);
for i:=1 to m do
 begin
  read(f1,h[i,2]);
  h[i,1]:=i;
 end;
for i:=1 to n do
 begin
  read(f1,b[i,2]);
  b[i,1]:=i;
 end;
close(f1);
imin:=1;
for i:=1 to n-m do
 if b[i,2]<b[imin,2]
  then imin:=i;
min:=h[1,2]+b[imin,2];
f[b[imin,1]]:=1;
fl:=1;
for i:=2 to m do
 for j:=imin to n+1 do
  begin
   if (h[i,2]+b[j,2]>min) and (f[b[j,1]]=0)
    then begin
          f[b[j,1]]:=1;
          write(f2,b[j,1],' ');
          min:=h[i,2]+b[j,2];
          fl:=fl+1;
          imin:=j;
          break;
         end;
 end;
if fl<>m
 then begin rewrite(f2); writeln(f2,'-1'); close(f2); exit; end;
close(f2);
END.
