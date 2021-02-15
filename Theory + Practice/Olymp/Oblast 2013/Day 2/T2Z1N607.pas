{Гурецкий Николай Александрович, город Молодечно, 11 класс, задача 1}
program T2Z1N607;
var n, k, m, i,i2,x, summ, summ2:integer; f1, f2:text; mas: array [1..1000] of integer; mas2: array [1..1000] of integer; mas3: array [1..2000] of integer;
begin
Assign(f1,'input.txt');
Reset(f1);
Assign(f2,'output.txt');
Rewrite(f2);
read(f1,n);
read(f1,k);
for i:=1 to n do begin
read(f1,mas[i]); readln(f1,mas2[i]);end;
summ:=0;//исходная сумма копий в ящиках
summ2:=0;//максимально возможная сумма копий
m:=0;//начальное кол-во минут
for i:=1 to n do begin
summ:=summ+mas[i];summ2:=summ2+mas2[i];end;
i:=1;
i2:=1;
if summ=k then writeln(f2,m);
if summ<k then begin
while summ<k do begin
if mas[i]<mas2[i] then begin mas[i]:=mas[i]+1;mas3[i2]:=i;  m:=m+1;if i< n then  i:=i+1 else i:=1;i2:=i2+1;summ:=0;for x:=1 to n do summ:=summ+mas[x];end;
if mas[i]=mas2[i] then begin if i< n then i:=i+1 else i:=1;summ:=0; for x:=1 to n do summ:=summ+mas[x];end;
end;end;
i:=1;
i2:=1;
if summ>k then begin 
while summ>k do begin
if mas[i]>0 then begin mas[i]:=mas[i]-1;mas3[i2]:=-i;m:=m+1;if i< n then  i:=i+1 else i:=1;i2:=i2+1;summ:=0;for x:=1 to n do summ:=summ+mas[x];end;
if mas[i]=0 then begin if i< n then i:=i+1 else i:=1;summ:=0; for x:=1 to n do summ:=summ+mas[x];end;
end;end;
writeln(f2,m);
for i:=1 to m do writeln(f2,mas3[i]);
close(f1);
close(f2);
end.