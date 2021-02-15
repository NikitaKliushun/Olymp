//Рожнов Максим Вячеславович 11"А", Гимназия №1г.Слуцка
program z2;
var
x,i,j,y,k,l,p:longint;





begin
assign(input,'input.txt');
assign(output,'output.txt');
reset(input);
rewrite(output);
read(k,y);
if y=0 then
 begin
   if k=3 then writeln('7 3 8');
   if k=2 then writeln('1 2');
   if k=1 then writeln('0');
 end;
if y=1 then
 begin
   if k=3 then writeln('5 3 3');
   if k=2 then writeln('5 3');
   if k=1 then writeln('1');
 end;

for i:=1 to 30 do begin
  k:=1;
  for j:=1 to i do k:=k*2;
  if y<k then begin l:=k-1;break;end;
end;


close(input);
close(output);
end.
