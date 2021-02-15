{Былинович Владислав, СШ №2 города Копыля, 6"Б" Класс}
program t2z3n40;
var n:integer;
f:text;
begin
n:=7;
assign  (f,'output.txt');
rewrite (f);
writeln (f,n);
close   (f);
end.

