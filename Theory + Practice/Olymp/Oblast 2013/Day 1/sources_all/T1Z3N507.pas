Program Z3;
var a,b,c:integer;
begin
assign(input,'input.txt');
assign(output,'output.txt');
reset(input);
rewrite(output);
read(a,b);
c:=a*b-2;
write(c);
close(input);
close(output);
end.