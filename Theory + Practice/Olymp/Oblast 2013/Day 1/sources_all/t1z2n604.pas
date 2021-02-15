program t1z2n604;
var
a,b,c,i:longint;
begin
assign(input,'input.txt');
assign(output,'output.txt');
reset(input);
rewrite(output);
read(a,c);
for i:=1 to trunc(c/4)  do
 begin
  if c mod (a*i)=0 then inc(b);
 end;
 writeln(b);
close(input);
close(output);
end.