var m,n:longint;
begin
assign(input,'input.txt');
reset(input);
assign(output,'output.txt');
rewrite(output);
read(m,n);
if m=4 then write(4-n);
if m<8 then write((m-3)*3-n);
if m>=8 then write(m*2-n);
close(input);
close(output);
end.