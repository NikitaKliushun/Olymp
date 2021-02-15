//Бузун Владислав Романович, г.Слуцк, 10 класс, №1
program z1;
var
d:array[1..1000]of integer;
a:array[1..1000,1..1000]of integer;
otv,n,b,i,j,s,t,met,dn,m,w,mes,count:integer;
begin
assign(input,'input.txt');
reset(input);
assign(output,'output.txt');
rewrite(output);
readln(m,w);
for i:=1 to m do
  begin
    read(d[i]);
    count:=count+d[i];
  end;


n:=1;
readln;
read(s,b,t);
met:=1;
dn:=s;
mes:=1;
for i:=1 to count do
 begin
  if dn>w then begin dn:=1; inc(n); end;
  a[n,dn]:=met;
  inc(met);
  inc(dn);
  if met>d[mes] then begin inc(mes); met:=1; end;
 end;

{for i:=1 to n do
 begin
  for j:=1 to w do
  write(a[i,j],' ':2);
  writeln;

 end; }

 for i:=1 to n do
   for j:=1 to w do
  if (a[i,j]=t)and(j=b) then inc(otv);

write(otv);




close(input);
close(output);
end.
