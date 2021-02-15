{Прилепский Александр Игоревич, г.Вилейка, 10 кл}
program T1Z4N110;
var mon:array[1..200000] of longint;
    yk:array[1..200000] of longint;
    kol:array[1..200000] of longint;
    i,n,m,k,f,ma:longint;
    x:boolean;

function xod(z:longint):boolean;
  var x:boolean;
      i:integer;
  begin
  i:=z; x:=true; xod:=true;
  while (i<>f) and x do
    begin
    if kol[i]>=k then x:=false;
    kol[i]:=kol[i]+1;
    i:=yk[i];
    end;
  if not x then xod:=false;
  end;

begin
Assign(input,'input.txt');
Reset(input);
Assign(output,'output.txt');
Rewrite(output);

readln(n,m,k);
for i:=1 to m do
read(mon[i]);
for i:=1 to n do
read(yk[i]);
readln(f);

i:=1;
x:=true;

while (i<=m) and x do
  begin
  x:=xod(mon[i]);
  if x then ma:=ma+1;
  i:=i+1;
  end;
writeln(ma);
Close(input); Close(output);
end.
