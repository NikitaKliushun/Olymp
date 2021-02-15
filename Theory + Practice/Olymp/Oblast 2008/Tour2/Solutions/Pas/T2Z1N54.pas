{Mazhut' Roman Sergeevich Molodechno 9 54}
program T2Z1N54;
const r=10000;
var
i,j,n,player,krupe,prise: longint;
k: array[1..r] of longint;
f: text;
procedure Sortirovka(c: longint);
 var tmpi,tmpj,tmp: longint;
 begin
 for tmpi:=1 to c do
  for tmpj:=1 to c-1 do
   if k[tmpj]<k[tmpj+1] then
    begin
    tmp:=k[tmpj+1];
    k[tmpj+1]:=k[tmpj];
    k[tmpj]:=tmp;
    end;
 end;
begin
assign(f,'input.txt');
reset(f);
readln(f,n);
for i:=1 to n do read(f,k[i]);
close(f);
Sortirovka(n);
for i:=1 to trunc(n/2) do player:=player+k[i];
for i:=trunc(n/2)+1 to n do krupe:=krupe+k[i];
prise:=player-krupe;
assign(f,'output.txt');
rewrite(f);
write(f,prise);
close(f);
end.