//Чуров Алексей, г.Солигорск,гимназия3-10B, TypII,з.1
program T2Z1NB16;
var f1,f2:text;
m,w,s,b,t,k,i,n,ms,day,h:integer;
d:array [1..100000] of integer;
begin
ms:=1;
day:=1;
assign(f1,'input.txt');
reset(f1);
readln(f1,m,w);
for i:=1 to m do begin
read(f1,d[i]);
n:=n+d[i];
end;
readln(f1,s,b,t);
close(f1);
for i:=1 to n do begin
if (b=s) and (t=day) then k:=k+1;
s:=s+1;
day:=day+1;
if s>w then s:=1;
if day>d[ms] then begin
ms:=ms+1;
day:=1;
end;
end;
assign(f2,'output.txt');
rewrite(f2);
write(f2,k);
close(f2);
end.