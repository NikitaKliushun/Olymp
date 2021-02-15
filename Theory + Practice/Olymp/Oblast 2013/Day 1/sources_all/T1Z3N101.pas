{Сафаров Руслан Валехович, г. Борисов, 11"A" класс, T1Z3N101}
Program T1Z3N101;
var f1,f2:text;
n,m:longint;
begin
assign(f1,'input.txt');
reset(f1);
assign(f2,'output.txt');
rewrite(f2);
read(f1,n);
read(f1,m);
write(f2,(n*m)-2);
close(f1);
close(f2);
end.
