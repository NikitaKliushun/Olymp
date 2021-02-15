//Чуров Алексей Валерьевич, г.Солигорск,9г, 2
program T1Z2NE05;
var f1,f2:text;
a,b,r,c,an,bn,s,k,max:integer;
begin
assign(f1,'input.txt');
reset(f1);
assign(f2,'output.txt');
rewrite(f2);
read(f1,a,b);
if a*b>a+b then max:=a*b
else max:=a+b;
for r:=1 to max do begin
for c:=r to max do begin
s:=r*c;
an:=s div 2;
bn:=s div 2;
if s mod 2 <> 0 then an:=an+1;
if (an<=a) and (bn<=b) or (an<=b) and (bn<=a) then k:=k+1;
end;
end;
writeln(f2,k);
close(f1);
close(f2);
end.