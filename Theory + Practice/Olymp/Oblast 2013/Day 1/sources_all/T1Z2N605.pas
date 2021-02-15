var b:real;
a,c:integer;
f1,f2:text;
begin
assign(f1,'input.txt'); reset(f1);
assign(f2,'output.txt'); rewrite(f2);
read(f1,a,c);
if a=c then b:=1;
if (a mod 2=0)and(c mod 2=0)then b:=sqr(a);
if (a mod 2=1)and(c mod 2=1)then b:=round(sqrt(a));
if (a mod 2=1)and(c mod 2=0)then b:=(round(sqrt(a))+1); 
write(f2,b);
close(f1);
close(f2);
end.