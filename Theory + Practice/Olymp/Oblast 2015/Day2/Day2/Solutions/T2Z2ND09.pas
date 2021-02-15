{Кудин Олег Евгеньевич г.Солигорск класс 11"А" номер задачи 1}
program t2z2nd09;
var d,i,k,x,z:integer;
begin
assign(input,'input.txt');
assign(output,'output.txt');
reset(input);
rewrite(output);
read(d);
x:=d;
i:=0;
z:=1;
while i*i*i<>x do
  begin
    if x mod 2=0 then
      begin
        i:=2;
        while i*i*i<x do
          i:=i+2;
      end        else
      begin
        i:=1;
        while i*i*i<x do
          i:=i+2;
      end;
    if i*i*i>x then
     begin
      x:=x+d;
      z:=z+1;
     end;
  end;
write(z);
close(input);
close(output);
end.