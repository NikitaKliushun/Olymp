var m,n:integer;
begin
assign(input,'input.txt');
reset(input);
assign(output,'output.txt');
read(m,n);
write(m*n-2);
close(input);
close(output);
end.
