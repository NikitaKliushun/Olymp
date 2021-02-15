//Чуров Алексей, г.Солигорск,гимназия3-10В, TypII,з.2
program T2Z2NB16;
var f1,f2:text;
m,i,n,j,x,y,max,m2,min,mx,mn:integer;
b,h:array [1..3000,1..2] of integer;
a:array [1..3000,1..2] of integer;
begin
assign(f1,'input.txt');
reset(f1);
readln(f1,m,n);
for i:=1 to m do begin
read(f1,h[i,1]);
h[i,2]:=i;
end;
for i:=1 to n do begin
read(f1,b[i,1]);
b[i,2]:=i;
end;
close(f1);
if m=2 then begin
min:=1;
max:=1;
for i:=2 to n do begin
if b[i,1]>b[max,1] then max:=i;
if b[i,1]<b[min,1] then min:=i;
end;
if h[1,1]>h[2,1] then begin
a[1,1]:=max;
a[2,1]:=min;
a[1,2]:=h[1,1]+b[min,1];
a[2,2]:=h[2,1]+b[max,1];
end
else begin
a[2,1]:=max;
a[1,1]:=min;
a[2,2]:=h[1,1]+b[min,1];
a[1,2]:=h[2,1]+b[max,1];
end;
if a[1,2]>a[2,2] then y:=-1;
end
else if m=3 then begin
min:=1;
max:=1;
for i:=2 to n do begin
if b[i,1]>b[max,1] then max:=i;
if b[i,1]<b[min,1] then min:=i;
end;
m2:=min;
for i:=1 to n do begin
if (b[i,1]<b[m2,1]) or (m2=min) then m2:=i;
a[1,1]:=min;
a[1,2]:=h[1,1]+b[min,1];
a[2,1]:=m2;
a[2,2]:=h[2,1]+b[m2,1];
a[3,1]:=max;
a[3,2]:=h[3,1]+b[max,1];
end;
end;
assign(f2,'output.txt');
rewrite(f2);
if y=-1 then write(f2,'-1')
else for i:=1 to m do write(f2,a[i,1],' ');
close(f2);
end.