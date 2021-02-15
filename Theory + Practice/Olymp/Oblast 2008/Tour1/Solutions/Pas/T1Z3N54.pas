{Mazhut' Roman Sergeevich Molodechno 9 3}
program T1Z3N54;
var
i,n,m,z,j,temp,q: longint;
a,b: array[1..10000] of longint;
f: Text;
label 1,2;
begin
assign(f,'input.txt');
reset(f);
read(f,n);
for i:=1 to n do a[i]:=i;
readln(f,m);
for i:=1 to m do
 begin
 read(f,z);
 for j:=1 to n do
  begin
  if a[j]=z then
   begin
   temp:=a[j];
   for q:=j downto 2 do a[q]:=a[q-1];
   a[1]:=temp;
   b[i]:=j;
   goto 1;
   end;
  goto 2;
  1:break;
  2:end;
 end;
close(f);
assign(f,'output.txt');
rewrite(f);
for i:=1 to m do write(f,b[i],' ');
close(f);
end.
