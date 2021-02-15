//Ћукша ƒмитрий ёрьевич, ѕуховический район, 9 класс, 1
var n,i,j,p,iA,nA,nR,k:integer;
x,y,z:array [1..100] of integer;
f1,f2:text;
begin
assign(f1,'input.txt');
reset(f1);
assign(f2,'output.txt');
rewrite(f2);

read(f1,nA);
p:=0;
for i:=1 to 100 do z[i]:=0;
nR:=nA mod 100;

if nA>=100 then n:=100
else n:=nR;

for iA:=1 to n do
begin

     for i:=1 to n do read(f1,x[i],y[i],z[i]);

     for i:=1 to n do
       for j:=1 to n do if x[i]=x[j] then if z[i]>z[j] then
           begin
           z[i]:=z[j];
           z[j]:=0;
           end;

     for i:=1 to n do if z[i]>p then p:=z[i];

     if (iA=100) and (round(nA / 100)>=100) then
     begin
     iA:=100;
     nA:=nA-100;
     end;
     
     if (iA=100) and (round(nA / 100)<100) and (nA<>0) then
     begin
     iA:=nR;
     nA:=0;
     end;
end;

write(f2,p);

close(f1);
close(f2);
end.