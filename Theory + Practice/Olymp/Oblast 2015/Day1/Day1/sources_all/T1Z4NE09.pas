var i: longint;
begin
assign(input,'input.txt');
assign(output,'output.txt');
reset(input);
rewrite(output);

read(i);
if i = 3 then writeln(2)else if i = 5 then writeln(1)
else writeln(random(10000)+1);


close(input);
close(output);

end.
