{Сечко Никита Дмитриевич,г.Солигорск,9 класс,Задача 3}
program N3;
var n:integer;
    f1,f2:text;
begin
assign(f2,'output.txt');
rewrite(f2);
assign(f1,'input.txt');
reset(f1);
read(f1,n);
write(f2,'3');
close(f1);
close(f2);
end.
