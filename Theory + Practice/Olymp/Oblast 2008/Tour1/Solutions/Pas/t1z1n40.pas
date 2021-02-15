{Былинович Владислав, город Копыль, 6"Б" класс, задача №1}
program t1z1n40;
var a,a1,a2,a3,a4,h,k,w,b,s,d:longint;
i:integer;
f:text;
begin
assign  (f,'input.txt');
reset   (f);
readln  (f,k);
close   (f);
b:=trunc(sqrt(k));
d:=b*b;
s:=k-b;
h:=b;
w:=b;
for i:=1 to 100 do
begin
a1:=(((h+1)-w)+(k-(h+1)*w));
a2:=((h-(w+1))+(k-h*(w+1)));
if  (a1<a2) and (((h+1)*w)<=k) then
h:=h+1;
if  (a1>a2) and ((h*(w+1))<=k) then
w:=w+1;
end;
assign  (f,'output.txt');
rewrite (f);
writeln (f,h,' ',w);
close   (f);
end.
