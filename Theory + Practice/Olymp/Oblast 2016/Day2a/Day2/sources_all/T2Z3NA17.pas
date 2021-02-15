{Гайдук Илья Олегович,11 класс, Задача 3}
VAR f2,f1:text;
    h:integer;
BEGIN
assign(f1,'input.txt'); reset(f1);
assign(f2,'output.txt'); rewrite(f2);
read(f1,h);
write(f2,h);
close(f1); close(f2);
END.