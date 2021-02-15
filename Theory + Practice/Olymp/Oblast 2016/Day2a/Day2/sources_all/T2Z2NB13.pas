//Бузун Владислав Романович, г.Слуцк, 10 класс, №2
program z2;
var
a:array[1..3]of byte;
b:array[1..100]of byte;
k,i,j,m,n,otv,x,y,x1,y1:integer;

begin
assign(input,'input.txt');
reset(input);
assign(output,'output.txt');
rewrite(output);

readln(m,n);

for i:=1 to m do
 read(a[i]);
for j:=1 to n do
 read(b[j]);

if m=2 then
 begin
  for i:=1 to n-1 do
   for j:=n downto 2 do
    begin
     if a[1]+b[i]<a[2]+b[j] then if otv=0 then begin otv:=1; write(i,' ',j); end;
     if (otv=0)and(a[2]+b[i]<a[1]+b[j]) then if otv=0 then begin otv:=1; write(j,' ',i); end;
    end;
 end;



if m=3 then
 begin
  for i:=1 to n-2 do
   for j:=n downto i+2 do
    for k:=i+1 to j-1 do
     begin
      if (a[1]+b[i]<a[2]+b[k])and(a[2]+b[k]<a[3]+b[j]) then if otv=0 then begin otv:=1; write(i,' ',k,' ',j); end;
      if (a[1]+b[i]<a[3]+b[k])and(a[3]+b[k]<a[2]+b[j]) then if otv=0 then begin otv:=1; write(i,' ',j,' ',k); end;
      if (a[2]+b[i]<a[1]+b[k])and(a[1]+b[k]<a[3]+b[j]) then if otv=0 then begin otv:=1; write(k,' ',i,' ',j); end;
      if (a[2]+b[i]<a[3]+b[k])and(a[3]+b[k]<a[1]+b[j]) then if otv=0 then begin otv:=1; write(j,' ',i,' ',k); end;
      if (a[3]+b[i]<a[2]+b[k])and(a[2]+b[k]<a[1]+b[j]) then if otv=0 then begin otv:=1; write(j,' ',k,' ',i); end;
      if (a[3]+b[i]<a[1]+b[k])and(a[1]+b[k]<a[2]+b[j]) then if otv=0 then begin otv:=1; write(k,' ',j,' ',i); end;
     end;
 end;

if otv=0 then write('-1');

close(input);
close(output);
end.
