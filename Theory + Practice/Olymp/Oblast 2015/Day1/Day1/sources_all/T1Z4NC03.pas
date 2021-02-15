{Карнаух Максим Михайлович, г.Молодечно, 9"А",Z4}
program z4;
var f1,f2:text;
a:array[1..100001,1..3] of longint;
m,n,i,j,max,nom,min:longint;
begin
assign(f1,'input.txt');
reset(f1);
assign(f2,'output.txt');
rewrite(f2);
read(f1,n);
m:=1;
i:=0;
while not(eof(f1)) do
   begin
   i:=i+1;
   for j:=1 to 3 do
     read(f1,a[i,j]);
   m:=m+1;
   end;
m:=m-1;
i:=1;
j:=1;
max:=0;
while i<>m+1 do
 begin
  while a[i,j]=a[i+1,j] do
    begin
      if a[i,j+2]>max then begin max:=a[i,j+2]; nom:=i; end;
      i:=i+1;
    end;
  if a[i,j+2]>max then begin max:=a[i+1,j+2]; nom:=i; end;
  a[nom,j+2]:=0;
 i:=i+1;
 max:=0;
 end;
min:=100000;
for i:=1 to m do
  for j:=3 to 3 do
   if (a[i,j]<min) and (a[i,j]<>0) then min:=a[i,j];




{for i:=1 to m do
 begin
 for j:=1 to 3 do
   write(f2,a[i,j],' ');
 writeln(f2);
 end;}
write(f2,min);




close(f1);
close(f2);
end.
