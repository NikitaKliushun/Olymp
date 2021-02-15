program t2z1nc04;
var
s,b,t,m,w,i,ot:longint;
d:array[0..100000,1..2] of longint;

Begin
{Масаковский Дмитрий Владимирович, Слуцк, Задача1}
assign(input,'input.txt');
assign(output,'output.txt');
reset(input);
rewrite(output);
ot:=0;
readln(m,w);
for i:=1 to m do
 read(d[i,1]);

read(s,b,t);

d[1,2]:=s;

for i:=1 to m do
 begin
  if i<>1 then
   begin
    d[i,2]:=(d[i-1,2]+(d[i-1,1] mod w) ) mod w;
    if (d[i-1,2]+(d[i-1,1] mod w) ) mod w=0 then d[i,2]:=w;
   end;

  if (t-(1+w-d[i,2])) mod w=b then inc(ot) else
  if ((t-(1+w-d[i,2])) mod w=0) and (b=w) then inc(ot);


 end;
 write(ot);
 close(input);
 close(output);
 end.
