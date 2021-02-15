//Рожнов Максим Вячеславович 11"А", Гимназия №1г.Слуцка
program z3;
var
n,m,k,i:longint;
a:array[1..100]of byte;
b:array[1..1000]of byte;
begin
assign(input,'input.txt');
assign(output,'output.txt');
reset(input);
rewrite(output);
{20 points}
read(n);
for i:=1 to n do begin
                 read(k);
                 inc(a[k]);
end;
if a[1]>a[2]then begin
  for i:=1 to a[1] do write(1,' ');
end
            else  begin
            for i:=1 to a[2] do write(2,' ');
            end;

close(input);
close(output);
end.
