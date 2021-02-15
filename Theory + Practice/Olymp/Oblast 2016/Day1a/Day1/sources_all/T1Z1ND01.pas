//Рожнов Максим Вячеславович 11"А", Гимназия №1г.Слуцка
program z1;
var
a:array[-5..15,-5..15]of integer;
n,i,j,k,x,y:longint;
c:char;
procedure tohit(x,y:longint);
var
i,j,u,d,l,r,dead,hit:longint;
begin
hit:=0;
dead:=0;

for i:=1 to 4 do begin

  if (a[x+i,y]=0)and(a[x-i,y]=0)and(a[x,y+i]=0)and(a[x,y-i]=0)then begin
    inc(dead);
    break;
  end;
  if (a[x+i,y]=1)or(a[x-i,y]=1)or(a[x,y+i]=1)or(a[x,y-i]=1)then begin
    inc(hit);
    break;
  end;
  if (dead>0)or(hit>0) then break;
end;
if hit>0 then writeln('HIT');
if dead>0 then writeln('DEAD');
end;


begin
assign(input,'input.txt');
assign(output,'output.txt');
reset(input);
rewrite(output);
fillchar(a,sizeof(a),0);
for i:=1 to 10 do begin
  for j:=1 to 10 do begin
    read(c);
    if c='.' then a[i,j]:=0;
    if c='#' then begin
      a[i,j]:=1;
      inc(k);
    end;
  end;
  readln;
end;
read(n);
for i:=1 to n do begin
  if k= 0 then break;
  read(x,c);readln(c);
  if c='a' then y:=1;
  if c='b' then y:=2;
  if c='c' then y:=3;
  if c='d' then y:=4;
  if c='e' then y:=5;
  if c='f' then y:=6;
  if c='g' then y:=7;
  if c='h' then y:=8;
  if c='i' then y:=9;
  if c='k' then y:=10;
  if a[x,y]=0 then writeln('MISS');
  if a[x,y]=1 then begin
    dec(k);
    //a[x,y]:=a[x,y]-2;
    if k=0 then writeln('GAME OVER')
         else tohit(x,y);
    a[x,y]:=a[x,y]-2;
  end;
  end;

close(input);
close(output);

end.
