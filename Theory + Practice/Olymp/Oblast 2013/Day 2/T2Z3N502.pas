program T2Z3N502;
var f1,f2:text; a:integer;
begin
assign(f1,'input.txt');
reset(f1);
assign(f2,'output.txt');
rewrite(f2);
read(f1,a);
randomize;
write(f2,random(11));
close(f1);
close(f2);
end.