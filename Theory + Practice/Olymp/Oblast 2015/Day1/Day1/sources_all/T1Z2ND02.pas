{Янович Евгений Сергеевич, г.Слуцк, 10, 1}
var
a,b,z,i,s1:longint;
c,j:byte;
s:array[1..20] of byte;
f1,f2:text;
begin
assign(f1,'input.txt');
reset(f1);
assign(f2,'output.txt');
rewrite(f2);



readln(f1,a,b);
z:=abs(a-b);
if a>b
 then a:=a-z+1;
if b>a
then
 b:=b-z+1;
 i:=1;
repeat
 s1:=(a + b) div i-i+1;
 j:=20;
 while (s1<>0) or (c=1) do
  begin
  s[j]:=s[j]+s1 mod 10+c;
  c:=s[j] div 10;
  s1:=s1 div 10;
  s[j]:=s[j] mod 10;
  j:=j-1;
  end;
 if c=1
  then s[j]:=1;
  c:=0;
  i:=i+1;
until ((a + b) div i-i+1)<0;
i:=1;
while s[i]=0 do
i:=i+1;
for j:=i to 20 do
write(f2,s[j]);
close(f1);
close(f2);
end.
