{Zhdanovich Egor Dmitrievich,Minsk,11',N1}
program T2Z1N49;
var
a:array [1..1000000] of longint;
i,j,k,n,min,imin,igrok,krype:longint;
f1:text;
begin
assign(f1,'input.txt');
reset(f1);
readln(f1,n);
for i:=1 to n do
 read(f1,a[i]);
close(f1);

for i:=1 to n-1 do
 begin
 min:=a[i];
 imin:=i;
 for j:=i to n do
  if a[j]<min then begin
                   imin:=j;
                   min:=a[j];
                   end;

 k:=a[i];
 a[i]:=a[imin];
 a[imin]:=k;
 end;

krype:=0;
igrok:=0;

for i:=1 to (n div 2) do
 krype:=krype+a[i];

for i:=((n div 2)+1) to n do
 igrok:=igrok+a[i];

k:=igrok-krype;

assign(f1,'output.txt');
rewrite(f1);
write(f1,k);
close(f1);
end.
