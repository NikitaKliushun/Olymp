{ÃÓÐÅÖÊÈÉ ÍÈÊÎËÀÉ ÀËÅÊÑÀÍÄÐÎÂÈ×, ÌÎËÎÄÅ×ÍÎ, 11 ÊËÀÑÑ, ÇÀÄÀ×À 3}
program T1Z3N607;
var N, M,X,Y, A,i, i2,i3: integer; f1,f2:text; ma:array [1..400] of string; m2:array [1..400] of string;
begin
Assign(f1,'input.txt');
Reset(f1);
Assign(f2,'output.txt');
Rewrite(f2);
read(f1,N);
read(f1,M);
A:=0;
x:=2;
y:=3;
i:=1;
while not Eof(f1) do begin
readln(f1,ma[i]); if not Eof(f1) then i:=i+1;end;
i2:=1;
i3:=1;
for  i2:=1 to m do begin 
while n>=x do begin
while m>=y do begin
if copy(ma[i],i2,x)=copy(ma[i+1],i2,x) then A:=A+1; x:=x+1;
if copy (ma[i],i2,x)=copy(ma[y],i2,x) then A:=A+1;y:=y+1;end;end;end;
write(A);
close(f1);
close(f2);
end.