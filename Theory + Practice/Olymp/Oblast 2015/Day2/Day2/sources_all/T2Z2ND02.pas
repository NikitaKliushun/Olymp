{Янович Евгений Сергеевич, г.Слуцк, 10, 2}
var
b:array[1..10000] of longint;
c:array[1..10000] of integer;
a,i,j,y:longint;
s:int64;
k:byte;
f2,f1:text;
begin
assign(f1,'input.txt');
reset(f1);
assign(f2,'output.txt');
rewrite(f2);
readln(f1,a);
i:=1;
j:=1;
s:=1;
while a<>1 do
 begin
 i:=i+1;
 if a mod i=0
  then begin
 while a mod i=0 do
  begin
  c[j]:=c[j]+1;
  a:=a div i;
  end;
  b[j]:=i;
  j:=j+1;
  end;
 end;

for i:=1 to j-1 do
 begin
 if c[i] mod 3=0
  then begin c[i]:=1; b[i]:=1; end
  else c[i]:=3-c[i] mod 3;


 end;

for i:=1 to j-1 do
 for y:=1 to c[i] do
 s:=s*b[i];
 writeln(f2,S);
close(f1);
close(f2);
end.
