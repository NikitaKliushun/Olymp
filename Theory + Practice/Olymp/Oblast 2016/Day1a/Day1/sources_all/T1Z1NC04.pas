program T1Z1NC04;
var
a,metka:array[-10..21,-10..21] of shortint;
c,f,t:char;
i,j,x,y,kol,n,code:integer;

Begin
{Масаковский Дмитрий Владимирович, Слуцк,10 класс, Задача 1}
assign(input,'input.txt');
assign(output,'output.txt');
reset(input);
rewrite(output);

for i:=1 to 10 do
begin
 for j:=1 to 10 do
  begin
  read(c);
  if c='#' then begin a[i,j]:=1; inc(kol); end else a[i,j]:=0;
  end;
readln;
end;




read(n);
for i:=1 to n do
 begin
  readln(x,t,f);

  if f='a' then y:=1;
  if f='b' then y:=2;
  if f='c' then y:=3;
  if f='d' then y:=4;
  if f='e' then y:=5;
  if f='f' then y:=6;
  if f='g' then y:=7;
  if f='h' then y:=8;
  if f='i' then y:=9;
  if f='k' then y:=10;
  if kol<>0 then
 if( a[x,y]=1)and(kol>1) then begin writeln('HIT'); dec(kol); end else
 if (a[x,y]=1)and (kol=1)  then begin writeln('GAME OVER'); dec(kol); end else
 if a[x,y]=0 then writeln('MISS');
 end;



close(input);
close(output);
end.
