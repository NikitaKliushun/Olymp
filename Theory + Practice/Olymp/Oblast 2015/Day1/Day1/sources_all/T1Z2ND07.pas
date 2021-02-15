program n1;
var
i,j,a,b,ot:longint;
Function min(a,b:longint):longint;
 begin
 if a>b then min:=b
  else min:=a;
  end;
Begin
{Масаковский Дмитрний Владимирович, Слуцк,9 класс,задача 2}
assign(input,'input.txt');
assign(output,'output.txt');
reset(input);
rewrite(output);

read(a,b);
if b=a then begin
for i:=1 to min(a,b) do
 for j:=i to a-min(a,b)+b+1 do
if ((i*(j div 2))<=min(a,b)) then inc(ot);
write(ot);     end
   else begin

for i:=1 to min(a,b) do
 for j:=i to a-min(a,b)+b do
if ((i*(j div 2))<=min(a,b)) then inc(ot);
write(ot);


   end;
close(input);
close(output);
end.
