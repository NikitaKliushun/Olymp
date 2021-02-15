//Атрохов Антон Анатольевич Солигорск.СОШ 2 Задача 2
program t1z2nd06;
var a,b,min,k:longint;
    f1,f2:text;
begin
assign(f1,'input.txt');
assign(f2,'output.txt');
reset(f1);
rewrite(f2);
read(f1,a,b);
if a<b then min:=a
       else min:=b;
k:=min*3-1;
write(f2,k);
close(f2);
close(f1);
end.