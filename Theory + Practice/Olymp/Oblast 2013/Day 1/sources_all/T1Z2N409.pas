{Каменко Павел Николаевич г.Столбцы Задача 2}
program z2;
var  a,c,nok,ans,q:int64;
     f:text;
     i:longint;
function nk(x,y:int64):int64;
var nod:int64;
begin

while (x<>0)or (y<>0) do
begin
 if (x=0)or(y=0)
  then break;
 if x>y
  then x:=a mod y
  else y:=y mod a;
end;
if x>y
 then nod:=x
 else nod:=y;

nk:=a*c div nod;
end;




begin
assign(f,'input.txt');
reset(f);
read(f,a,c);
close(f);
nok:=nk(a,c);
for i:=1 to round(sqrt(nok)) do
begin
 if (nok mod i=0)and(nok div i<=c)and(i mod a=0)
  then inc(ans);
  q:=nok div i;
 if (nok mod q=0)and(nok div q<=c)and(q mod a=0)
  then inc(ans);
end;

assign(f,'output.txt');
rewrite(f);
write(f,ans);
close(f);

end.
