{Прилепскй Александр Игоревич, г.Вилейка, 10 кл}
program T1Z2N110;
var g,x,a,c,k:int64;
begin
Assign(input,'input.txt');
Reset(input);
Assign(output,'output.txt');
Rewrite(output);
readln(a,c);
k:=1;
if (a=1) and (c mod 10 = 0) then a:=10
x:=a;
g:=(c div 2)+1;
while x<g  do
  begin
  x:=x+a;
  if c mod x = 0 then k:=k+1;
  end;
if a<>c then k:=k+1;
writeln(k);
Close(input); Close(output);
end.
