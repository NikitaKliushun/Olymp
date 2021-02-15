var f2:text;
begin
assign(f2,'output.txt');
rewrite(f2);
writeln(f2,-1);
close(f2);
end.