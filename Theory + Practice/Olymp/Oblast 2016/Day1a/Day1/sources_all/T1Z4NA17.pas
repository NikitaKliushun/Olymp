{Гайдук Илья Олегович,г. Борисов,11"А", Задача 4}
LABEL 10;
TYPE mas=array[1..2,1..2000] of integer;
     masmin=array[1..2000] of integer;
VAR f1,f2:text;
    a:mas;
    b:masmin;
    N,i,j,K,x,p,min:integer;
function r(a,b:integer):integer;
var razn:integer;
begin
    razn:=(abs(a-b));
    if razn>(k div 2) then razn:=k-razn;
    r:=razn;
end;
BEGIN
assign(f1,'input.txt'); reset(f1);
assign(f2,'output.txt'); rewrite(f2);
read(f1,n); read(f1,k); readln(f1);
for i:=1 to n do
begin
    for j:=1 to k do
    begin
        read(f1,x);
        a[i,j]:=x;
    end;
    readln(f1);
end;
p:=1;
if N=2 then
begin
    for j:=1 to k do
        if a[1,j]=a[2,j] then 
        begin
            write(f2,'0');
            goto 10;
        end;
    for j:=1 to k do
        for i:=1 to k do
            if i<>j then 
                if a[1,j]=a[2,i] then 
                begin
                    b[p]:=r(i,j);
                    inc(p);
                end;
    if p=1 then write(f2,'-1');
end;
min:=b[1];
for i:=2 to p-1 do
    if b[i]<min then min:=b[i];
write(f2,min);
10:
close(f1); close(f2);
END.