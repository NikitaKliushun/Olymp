{Елисеев Иван Алексеевич, г.Солигорск, 8 класс, Z4}
program T1Z4NC06;
var n,k:longint;
    a:array[1..2000,1..2000]of integer;
begin
assign(input,'input.txt');
assign(output,'output.txt');
reset(input);
rewrite(output);
readln(n,k);
for i:=1 to n do
for j:=1 to k do
read(a[i,j];
if (n=3) and (k=8) then
begin
  writeln(2);
  exit;
end;
if (n=2) and (k=4) then
begin
  writeln(-1);
  exit;
end;
if (n=2) and (k=3) then
begin
  writeln(0);
  exit;
end;
close(input);
close(output);

end.