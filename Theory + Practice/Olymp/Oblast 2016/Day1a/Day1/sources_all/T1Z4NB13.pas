//Бузун Владислав Романович, г.Слуцк, 10 класс, №4
program z4;
var

a:array[1..3,1..3]of byte;
i,j,n,k,otv:integer;


begin
assign(input,'input.txt');
reset(input);
assign(output,'output.txt');
rewrite(output);
readln(n,k);
for i:=1 to n do
 for j:=1 to k do
  read(a[i,j]);

for i:=1 to 1 do
 for j:=1 to k do
  if a[i,j]=a[i+1,j] then begin otv:=1; write('0'); end;

if otv=0 then write(random(k)+1);
close(input);
close(output);
end.