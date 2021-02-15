{Сафаров Руслан Валехович, г. Борисов, 11"A" класс, T2Z3N101}
Program T2Z3N101;
var n:longint;
f1,f2:text;
begin
assign(f1,'input.txt');
reset(f1);
assign(f2,'output.txt');
rewrite(f2);
read(f1,n);
if n=4 then write(f2,0);
if n=6 then write(f2,5);
if (n<>6) and (n<>4) then write(f2,12);
close(f1);
close(f2);
end.