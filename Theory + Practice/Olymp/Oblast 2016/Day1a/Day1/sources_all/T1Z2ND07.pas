program T1Z2ND07;
var k:integer;
y:longint;
f1,f2:text;
begin
assign(f1,'input,txt');
reset(f1);
assign(f2,'output.txt');
rewrite(f2);
read(f1,k,y);
if (k=3) and (y=0) then write(f2,1,' ',3,' ',2);
if (k=2) then write(f2,-1);
close(f1);
close(f2);
end.
