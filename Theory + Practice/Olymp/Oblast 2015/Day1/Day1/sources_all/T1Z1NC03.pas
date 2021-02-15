{Карнаух Максим Михайлович, г.Молодечно, 9"А",Z1}
program z1;
var f1,f2:text;
a,b,otv:array[1..1000001] of byte;
n,k,i,j,c,z,max,o:longint;
begin
assign(f1,'input.txt');
reset(f1);
assign(f2,'output.txt');
rewrite(f2);
read(f1,n,k);
for i:=1 to n do read(f1,a[i]);
for i:=1 to n-1 do
  for j:=1 to n-1 do
    begin
    if a[j]>a[j+1] then
      begin
      c:=a[j+1];
      a[j+1]:=a[j];
      a[j]:=c;
      end;
    end;
i:=1;
z:=1;
while i<n do
  begin
    while a[i]=a[i+1] do
      begin
      b[z]:=b[z]+1;
      i:=i+1;
      end;
  b[z]:=b[z]+1;
  z:=z+1;
  i:=i+1;
  end;
z:=z-1;
j:=1;
max:=0;
for i:=1 to z do
  begin
  if (b[i] mod k=0) and (b[i] div k>=1)  then
                  begin
                    max:=max+(b[i] div k);
                    o:=1;
                    while o<>((b[i] div k)+1) do
                      begin
                      otv[j]:=i;
                      j:=j+1;
                      o:=o+1;
                      end;
                  end
 else
  if (b[i] div k>=1) and (b[i] mod k<>0) then
    begin
    max:=max+(b[i] div k);
    o:=1;
    while o<>((b[i] div k)+1) do
      begin
      otv[j]:=i;
      j:=j+1;
      o:=o+1;
      end;
    end;
 end;
if max=0 then write(f2,0)
  else
   begin
   write(f2,max);
   writeln(f2);
   for i:=1 to j-1 do write(f2,otv[i],' ');
   end;
close(f1);
close(f2);
end.
