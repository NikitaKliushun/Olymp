var a,c,s,i:longint;f1,f2:text;
begin
assign(f1,'input.txt');
reset(f1);
assign(f2,'output.txt');
rewrite(f2);
read(f1,a,c);
for i:=a to c do begin
if i mod a=0  then
if c mod i=0  then
s:=s+1;
end;
write(f2,s); 
close(f1);
close(f2);
end.
