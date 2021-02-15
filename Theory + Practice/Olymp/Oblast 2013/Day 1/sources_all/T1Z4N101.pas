{Сафаров Руслан Валехович, г. Борисов, 11"A" класс, T1Z4N101}
Program T1Z4N101;
var f1,f2:text;
n,m,k:longint;
begin
assign(f1,'input.txt');
reset(f1);
assign(f2,'output.txt');
rewrite(f2);
read(f1,n);
if n=5 then write(f2,2);
if n=6 then write(f2,1);
if (n<>5) and (n<>6) then
 write(f2,4);
close(f1);
close(f2);
end.
