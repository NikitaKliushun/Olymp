{Сафаров Руслан Валехович, г. Борисов, 11"A" класс, T1Z2N101}
Program T1Z2N101;
var f1,f2:text;
i:longint;
a,b,c,sum:int64;
begin
assign(f1,'input.txt');
reset(f1);
assign(f2,'output.txt');
rewrite(f2);
read(f1,a);
read(f1,c);
sum:=2;
For i:=a+1 to c-1 do
 if (i mod a=0) and (c mod i=0) then
  sum:=sum+1;
write(f2,sum);
if a=c then
 begin
  rewrite(f2);
  write(f2,1);
 end;
close(f1);
close(f2);
end.
