//Иванов Денис Сергеевич,Минский район,11,z2
program T1Z2ND03;
var a,b,k:integer;
f1,f2:text;
begin
assign(f1,'input.txt');
reset(f1);
assign(f2,'output.txt');
rewrite(f2);
read(f1,a,b);
if (a=1) or (b=1) then k:=a*b+1
else
if a>b then k:=a*2-b else k:=b*2-a;
write(f2,k);
close(f1);
close(f2);
end.
