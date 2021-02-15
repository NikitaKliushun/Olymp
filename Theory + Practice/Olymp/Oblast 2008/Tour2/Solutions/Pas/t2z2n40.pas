{Былинович Владислав, СШ №2 города Копыля, 6"Б" класс, 2 задача}
program t2z2n40;
var n:integer;
f:text;
begin
n:=10;
assign  (f,'output.txt');
rewrite (f);
writeln (f,n);
close   (f);
end.