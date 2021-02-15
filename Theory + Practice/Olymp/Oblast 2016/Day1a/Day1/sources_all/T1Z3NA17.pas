{Гайдук Илья Олегович,г. Борисов,11"А", Задача 3}
LABEL 10;
TYPE mas=array[1..100] of integer;
VAR N,x,i,k:integer;
    f2,f1:text;
    A:mas;
BEGIN
assign(f1,'input.txt'); reset(f1);
assign(f2,'output.txt'); rewrite(f2);
read(f1,N); readln(f1);
i:=1;
while not eof(f1) do
begin
    read(f1,x);
    A[i]:=x;
    inc(i);
end;
if N=3 then
    if (A[1]<>A[3]) or (A[1]=A[2]) then goto 10; 
for i:=1 to n-2 do
    if (A[i]<>A[i+2]) or (A[1]=A[i+1]) then k:=k+1;
if k=n-2 then goto 10;
10:
write(f2,n);
close(f1); close(f2);
END.