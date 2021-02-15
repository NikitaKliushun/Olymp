Program Z2;
var a,b,c,i,j:longint;
begin
assign(input,'input.txt');
assign(output,'output.txt');
reset(input);
rewrite(output);
read(a,c);
b:=a;
for i:= 1 to c do begin
    inc(b);
    if c mod b=0
       then inc(j);
end;
write(j);
end.
