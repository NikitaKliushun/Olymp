//Ћукша ƒмитрий ёрьевич, ѕуховический район, 9 класс, 1
var kol,i,pred:integer;
a,b,a1,b1,max,min:longint;
f1,f2:text;
begin
assign(f1,'input.txt');
reset(f1);
assign(f2,'output.txt');
rewrite(f2);

read(f1,a,b);

kol:=0;
pred:=10;
a1:=0;
b1:=0;
i:=2;

if a>b then
begin
     max:=a;
     min:=b;
end
else
begin
     max:=b;
     min:=a;
end;

while (a1<>max) and (b1<>min+1) do
begin

     if (a1+1<>max+1) and (pred<>1) then
     begin
     a1:=a1+1;
     kol:=kol+1;
     pred:=1;
     end;
     
     while (min>=kol div 2*i-1) and (max>=kol div 2*i+1) and (kol mod 2 = 1) and (a>=2) and (b>=2) do
     begin
     kol:=kol+1;
     i:=i+1;
     end;
     
     if (b1+1<>min+2) and (pred<>0) then
     begin
     b1:=b1+1;
     if (b1<>min+1) then kol:=kol+1;
     pred:=0;
     end;


     while (a>=kol div 2*i) and (b>=kol div 2*i) and (kol mod 2 = 0) and (a>=2) and (b>=2) do
     begin
     kol:=kol+1;
     i:=i+1;
     end;
     i:=2;

end;

write(f2,kol);

close(f1);
close(f2);
end.