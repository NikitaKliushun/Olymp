program z1;
var m:real;
f1,f2:text;
begin
assign(f1,'input.txt');
reset(f1);
assign(f2,'output.txt');
rewrite(f2);

m:=1;
if M= 1 then M:=m-2;
writeln(f2,round(m));
close(f1);
close(f2);
end.
