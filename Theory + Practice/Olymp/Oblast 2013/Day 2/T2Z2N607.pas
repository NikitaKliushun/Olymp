{Гурецкий Николай Александрович, город Молодечно, 11 класс, задача 2}
program T2Z2N607;
var n, k,max,i,i2,sw,x:integer; f1,f2:text; d: array [1..1000000] of integer; d2: array [1..1000000] of integer; d3: array [1..1000000] of integer;
begin
Assign(f1,'input.txt');
Reset(f1);
Assign(f2,'output.txt');
Rewrite(f2);
read(f1,n);
read(f1,k);
for i:= 1 to n do
read(f1,d[i]);
for i:=1 to n do begin
d2[i]:=d[i];end;
max:=0;
for i:=1 to n do begin
for i2:=1 to n do begin
if d[i]-d[i2]>max then begin max:=d[i]-d[i2];end;end;end;
//из максимального в минимальное
for i:=1 to n do begin
for i2:=1 to n do begin
if (d[i]-d[i2]<max) and (d[i]-d[i2]>=0) then begin max:=d[i]-d[i2];end;end;end;
for i:=1 to n do begin
for i2:=1 to n do begin
if d[i]<d[i2] then begin sw:=d[i]; d[i]:=d[i2]; d[i2]:=sw;end;end;end;
x:=1;
for i:=1 to n do begin
for i2:=1 to n do begin
if d[i]=d2[i2] then begin d3[x]:=i2; x:=x+1;end;end;end;
writeln(f2,k);
for i:=1 to k do
write(f2,d3[i],' ');
close(f1);
close(f2);
end.