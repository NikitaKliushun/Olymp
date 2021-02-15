{Матвиевич Егор Сергеевич 11 класс ГУО"Гимназия №2 г. Солигорска}
program T1Z3NB11;
var i,n,j:longint;a:array[1..100000]of longint;
f:boolean;
begin
assign(input,'input.txt');
assign(output,'output.txt');
reset(input);rewrite(output);
 readln(n);
  for i:=1 to n do
    read(a[i]);
 for i:=1 to n-2 do
 for j:=1 to n-i do
 if (a[i]=a[i+j])and(a[i]<>a[i+j]) then f:=true;
  if f=false then begin write(n);exit;end;

close(input);close(output);
end.
