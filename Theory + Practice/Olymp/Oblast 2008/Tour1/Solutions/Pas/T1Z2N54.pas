{Mazhut' Roman Sergeevich Molodechno 9 2}
program T1Z2N54;
var
n,k,i,dec,ch,podarok,sum,j: longint;
TS: String;
a,perebor: array[1..10000] of longint;
f: Text;
function ToHex(t,z: longint): string;
 begin
 ToHex:='';
 while t>1 do
  begin
  if trunc(t/2)<>t/2 then ToHex:='1'+ToHex else ToHex:='0'+ToHex;
  t:=trunc(t/2);
  end;
 ToHex:='1'+ToHex;
 while length(ToHex)<z do ToHex:='0'+ToHex;
 end;
begin
assign(f,'input.txt');
reset(f);
readln(f,n,k);
for i:=1 to n do
 begin
 read(f,a[i]);
 sum:=sum+a[i];
 dec:=dec*2+1;
 end;
close(f);
for i:=1 to dec do
 begin
 Ts:=ToHex(i,n);
 for j:=1 to length(Ts) do
  if Ts[j]='1' then podarok:=podarok+a[j];
 if (podarok>=k)and(sum-podarok>=k) then ch:=ch+1;
 podarok:=0;
 end;
assign(f,'output.txt');
rewrite(f);
writeln(f,ch);
close(f);
end.
