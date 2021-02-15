{Янович Евгений Сергеевич, г.Слуцк, 10, 1}
var
a:array[1..100] of longint;
n,k,x,s,i:longint;
begin
assign(input,'input.txt');
reset(input);
assign(output,'output.txt');
rewrite(output);

readln(n,k);

for i:=1 to n do
 begin
 read(x);
 a[x]:=a[x]+1;
 end;


for i:=1 to 100 do
 begin
  a[i]:=a[i] div k;
  s:=s+a[i];
  end;
 if s<>0
 then
 begin
write(s);
writeln;
for i:=1 to 100 do
  while a[i]>0 do
  begin
  a[i]:=a[i]-1;
  write (i,' ');
  end;
 end
 else writeln('0');

close(input);
close(output);
end.