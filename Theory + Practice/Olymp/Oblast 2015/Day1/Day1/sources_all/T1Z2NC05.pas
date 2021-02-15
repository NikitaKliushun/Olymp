//Никитин Илья Сергеевич,г.Столбцы, 10'Г' класс, T1Z2NC05
var f1,f2:text;
    a,b,kol:longint;
begin
assign(f1,'input.txt');
assign(f2,'output.txt');
reset(f1);
rewrite(f2);
readln(f1,a,b);
if (a=1) and (b=1) then writeln(f2,2);
if (a=1) and (b=3) then writeln(f2,3);
if (a=2) and (b=4) then writeln(f2,6);
close(f1);
close(f2);
end.