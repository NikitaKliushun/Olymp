program t2z3n604;
var
a,b,c:longint;
begin
assign(input,'input.txt');
assign(output,'output.txt');
reset(input);
rewrite(output);
read(a,b);
c:=(a+b) div 2;
writeln(c);
close(input);
close(output);
end.
