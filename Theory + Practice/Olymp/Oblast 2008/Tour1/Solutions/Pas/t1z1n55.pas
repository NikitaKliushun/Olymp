{#55,Гуд Роман, Солигорск}
program t1z1n55;
var  k,i:longint;
     h,w,ost,wp,ind,ip,x:integer;
begin
assign (input,'input.txt');
reset (input);
assign (output, 'output.txt');
rewrite (output);
read (k);
x:=round (sqrt(k));
h:=x;
ost:=k -  sqr(x);
wp:= x + ost;
ind:=(abs(h-wp)) + (k-(h*wp));
for i:= 1 to ost do
begin
wp:=wp - 1;
ip:=(abs(h-wp)) + (k-(h*wp));
if ip > ind
 then
 begin
 w:=wp;
 ind:=ip;
 end;
end;
write(h,' ',w);
close (input);
close (output);
end.
