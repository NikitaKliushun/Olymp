{Mazhut' Roman Sergeevich Molodechno 9 54}
program T2Z2N54;
var
n,k,i,j,sum: longint;
s: string;
f: text;
function Odinakov(str: string): longint;
 var
 tmp: array[1..256] of longint;
 tmpi,max: longint;
 begin
 Odinakov:=0;
 max:=0;
 for tmpi:=1 to 256 do tmp[tmpi]:=0;
 for tmpi:=1 to length(str) do tmp[ord(str[tmpi])]:=tmp[ord(str[tmpi])]+1;
 for tmpi:=1 to 256 do
  if (tmp[tmpi]>=2)and(tmp[tmpi]>Odinakov) then Odinakov:=tmp[tmpi];
 end;
begin
assign(f,'input.txt');
reset(f);
read(f,n);
readln(f,k);
read(f,s);
close(f);
for i:=1 to n do
 for j:=1 to n-(i-1) do
  begin
  if Odinakov(copy(s,i,j))<=k then sum:=sum+1;
  end;
assign(f,'output.txt');
rewrite(f);
write(f,sum);
close(f);
end.
