{Янович Евгений Сергеевич, г.Слуцк, 10, 1}
var
a,b:array[0..100000] of char;
l,i,j,a1,b1,r1,r2:longint;
begin

assign(input,'input.txt');
reset(input);
assign(output,'output.txt');
rewrite(output);
while not Eoln(input) do
 begin
 i:=i+1;
 read(a[i]);
 end;
 a1:=i;
 i:=0;
 readln(input);
while not Eoln(input) do
 begin
 i:=i+1;
 read(b[i]);
 end;
 b1:=i;
if b1>a1
 then r2:=b1-a1
 else r1:=a1-b1;

if b1<a1
 then a1:=b1;
 i:=a1;
 while (a[i+r1]=b[i+r2]) and (i<>0) do
   i:=i-1;
 writeln(a1-i);

close(input);
close(output);
end.
