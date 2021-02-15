var a,b,c,i:int64;
begin
assign(input,'input.txt');
reset(input);
assign(output,'output.txt');
rewrite(output);
b:=0;
i:=1;
read(a,c);
while i*a<=c div 2+1 do begin
if c mod (i*a)=0 then inc(b);
inc(i);
end;
write(b+1);
close(input);
close(output);
end.