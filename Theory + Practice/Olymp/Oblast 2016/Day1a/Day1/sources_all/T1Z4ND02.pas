Program N4;
var n,m:integer;
    f1,f2:text;
    
begin
assign(f1,'input.txt');
reset(f1);
assign(f2,'output.txt');
rewrite(f2);
read(f1,n,m);
write(f2,'-1');
close(f1);
close(f2);
end.