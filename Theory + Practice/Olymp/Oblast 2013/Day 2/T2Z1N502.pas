program T2Z1N502;
var a:integer;
    f1,f2:text;
begin
assign(f1,'input.txt');
reset(f1);
assign(f2,'output.txt');
rewrite(f2);
read(f1,a);
writeln(f2,1);
write(f2,1);
close(f1);
close(f2);
end.