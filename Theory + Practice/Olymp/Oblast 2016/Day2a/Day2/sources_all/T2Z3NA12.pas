{Karnauh Maksim,T2Z3NA12}
program T2Z3NA12;
var f1,f2:text; k:byte; n,i,psm,z,j:longint;
a:array[1..20000] of integer;
begin
assign(f1,'input.txt');
reset(f1);
assign(f2,'output.txt');
rewrite(f2);

read(f1,n,k);
for i:=1 to n do
 read(f1,a[i]);

psm:=1;
z:=0;
for i:=1 to k do
 begin
  for j:=1 to n do
   if psm=a[j] then psm:=psm+1;

  if k<>i then
  for j:=n downto 1 do
    if psm=a[j] then psm:=psm+1;

 end;

write(f2,psm-1);








close(f1);
close(f2);
end.