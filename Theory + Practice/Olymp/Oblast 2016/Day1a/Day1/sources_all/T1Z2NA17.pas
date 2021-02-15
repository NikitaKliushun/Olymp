{Гайдук Илья Олегович,г. Борисов,11"А", Задача 2}
VAR f1,f2:text;
    K,Y,i:integer;
BEGIN
assign(f1,'input.txt'); reset(f1);
assign(f2,'output.txt'); rewrite(f2);
read(f1,K); read(f1,Y);
if Y=0
then
begin
    write(f2,'0 ');
    for i:=1 to (k-1) do
      write(f2,i,' ');
end;
if y=1 then
begin
    write(f2,'1 ');
    for i:=1 to (k-1) do
      write(f2,i*2+1,' ');
end;
close(f1); close(f2);
END.
