program z_4;
var x,y,z:array[1..1000] of integer;
    n,i,j,k,min,r:integer;
    f1,f2:text;
begin
assign(f1,'input.txt');
reset(f1);
assign(f2,'output.txt');
rewrite(f2);
readln(f1,n);
k:=n-1;
for i :=1 to k do
 read(f1,x[i],y[i],z[i]);
for i:=1 to k-1 do
 for j:=1 to k-i do
  if z[j]>z[j+1] then begin
                       r:=z[j];
                       z[j]:=z[j+1];
                       z[j+1]:=r;
                      end;
write(f2,z[1]);
close(f1);
close(f2);
end.
