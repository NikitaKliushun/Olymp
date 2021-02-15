program t2z2nco4;
var
h,hb:array[1..3000] of int64;
i,k,j,m,n,code:longint;
BEGIN
{Масаковский Дмитрий Владимирович, Слуцк, Задача 2}
assign(input,'input.txt');
assign(output,'output.txt');
reset(input);
rewrite(output);
code:=0;
read(m,n);
for i:=1 to m do
 read(h[i]);
for i:=1 to n do
 read(hb[i]);

 for i:=1 to n do
  for j:=i+1 to n do
   for k:=j+1 to n do
    if ((h[1]+hb[i])<(h[2]+hb[j]))and((h[2]+hb[j])<(h[3]+hb[k])) then begin
    write(i,' ',j,' ',k); code:=1;
    exit;
    end;
    if code=0 then write(-1);
end.