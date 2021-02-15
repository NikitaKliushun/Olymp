{Сечко Никита Дмитриевич, г. Солигорск, 9 класс, задача 2}
program N2;
var h,b,k:array[1..3000] of longint;
    n,m,g,v,g2,m1:INT64;
    i,t:integer;
    f:text;

procedure resh(l:smallint);
var i:smallint;
begin
if t=1 then exit;
for i:=l to n-m+1 do begin
 if (h[v]+b[i]>g) then begin
  k[i]:=v;
  g2:=g;
  if v=m1 then begin
   t:=1;
   exit;
  end;
  g:=h[v]+b[i];
  inc(v);
  dec(m);
  resh(i+1);
  if t=1 then exit;
  g:=g2;
  k[i]:=0;
  dec(v);
  inc(m);
 end;
end;
end;

begin
assign(f,'input.txt');
reset(f);
read(f,m,n);
for i:=1 to m do read(f,h[i]);
for i:=1 to n do read(f,b[i]);
m1:=m;
v:=1;
resh(1);
assign(f,'output.txt');
rewrite(f);
if t=0 then write(f,'-1')
else for i:=1 to n do if k[i]<>0 then write(f,i,' ');
close(f);
end.


