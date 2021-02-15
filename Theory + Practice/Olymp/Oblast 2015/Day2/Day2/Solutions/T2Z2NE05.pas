//Чуров Алексей Валерьевич,г.Солигорск,9г,2
program T2Z2NE05;
var f1,f2:text;
d,dd,n,i,j,s:integer;
begin
assign(f1,'input.txt');
reset(f1);
assign(f2,'output.txt');
rewrite(f2);
read(f1,d);
dd:=d;
while s<>1 do begin
i:=i+1;
j:=0;
while j<>dd  do begin
j:=j+1;
if j*j*j=dd then begin
s:=1;
j:=dd;
end;
end; 
dd:=d+i*d;
n:=n+1;
end;
writeln(f2,n);
close(f1);
close(f2);
end.