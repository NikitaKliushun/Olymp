program z3;
const a:array[1..9]of longint=(0,0,2,4,6,9,12,16,25);
var n,m:longint;
     f:text;
begin
assign(f,'input.txt');
reset(f);
read(f,n,m);
close(f);
assign(f,'output.txt');
rewrite(f);
write(f,a[n]-m);
close(f);



end.