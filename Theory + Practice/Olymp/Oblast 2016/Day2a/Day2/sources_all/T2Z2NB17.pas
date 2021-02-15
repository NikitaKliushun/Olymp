var
a:array[1..3000] of longint;
b:array[1..3002] of longint;
bi:array[1..3002] of integer;
i,j,n,x,k,l,r,m,xi:longint;
begin
assign(input,'input.txt');
reset(input);
assign(output,'output.txt');
rewrite(output);
readln(n,m);
for i:=1 to n do
 read(a[i]);
readln;
for j:=1 to m do
 read(b[j]);
for i:=1 to m do
 bi[i]:=i;
 for i:=1 to n-1 do
  for j:=i to n do
  if a[i]>a[j]
   then
    begin
    x:=a[i];
    a[i]:=a[j];
    a[j]:=x;
    end;
 for i:=1 to m do
  for j:=i to m do
  if b[i]>b[j]
   then
    begin
    x:=b[i];
    b[i]:=b[j];
    b[j]:=x;
    xi:=bi[i];
    bi[i]:=bi[j];
    bi[j]:=xi;
    end;

   j:=1;

   i:=2;
   x:=a[1]+b[1];
 while i<=n do
  begin
  j:=j+1;
  if j>m
   then
    begin
    writeln('-1');
    halt;
    end;
  if x>=a[i]+b[j]

         then
         begin
         bi[j]:=-1;
          while b[j]=b[j-1] do
          begin
          bi[j]:=-1;
           j:=j+1;
          end;
         i:=i-1;
         j:=j-1;
         end
        else
         x:=a[i]+b[j];




  i:=i+1;



  end;


k:=0;
i:=0;
while (k<>n) and (i<=m) do
begin
  i:=i+1;
  if bi[i]<>-1
   then
    begin
    k:=k+1;
    b[k]:=bi[i];
    end;
 end;

{if k<>n
 then
 begin
  writeln('-1');
  halt;
  end;   }





for i:=1 to n-1 do
 for j:=i to n  do

  if b[i]>b[j]
  then
   begin
   xi:=b[i];
    b[i]:=b[j];
    b[j]:=xi;
    end;



  for i:=1 to n do
   write(b[i],' ');

  close(input);
 close(output);
end.
