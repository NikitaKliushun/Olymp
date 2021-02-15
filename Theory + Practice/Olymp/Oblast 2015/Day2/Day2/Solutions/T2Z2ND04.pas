//Ћукша ƒмитрий ёрьевич, ѕуховичский район, 9 класс, 2
const nat=[2,5,7,13,17];

var D,i,num:longint;
k:integer;
f1,f2:text;
begin
assign(f1,'input.txt');
reset(f1);
assign(f2,'output.txt');
rewrite(f2);

read(f1,D);
i:=0;
k:=0;

while true do
begin
     num:=d+i*d;
     if (num = 2*2*2) or (num = 5*5*5) or (num = 7*7*7) or (num = 13*13*13) or (num = 17*17*17) or (num= 23*23*23) then break
     else
     k:=k+1;
     i:=i+1;
end;

write(f2,k+1);

close(f1);
close(f2);
end.