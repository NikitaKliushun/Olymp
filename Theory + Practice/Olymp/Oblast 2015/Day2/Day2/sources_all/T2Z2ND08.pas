program z_2;
var a,b,c,d:longint;
    f1,f2:text;
begin
assign(f1,'input.txt');
reset(f1);
assign(f2,'output.txt');
rewrite(f2);
read(f1,d);
repeat
  b:=b+d;
  a:=a+1;
until
   (b=1) or
   (b=8) or
   (b=27) or
   (b=64) or
   (b=125) or
   (b=216) or
   (b=343) or
   (b=512) or
   (b=729) or
   (b=1000) or
   (b=1331) or
   (b=1728) or
   (b=2197) or
   (b=2744) or
   (b=3375) or
   (b=4096) or
   (b=4913) or
   (b=5832) or
   (b=6859) or
   (b=8000) or
   (b=9266) or
   (b=10648) or
   (b=12167);
write(f2,a);
close(f1);
close(f2);
end.
