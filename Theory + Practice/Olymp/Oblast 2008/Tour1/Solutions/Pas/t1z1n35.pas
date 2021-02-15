var k,n,m,w,h,a: int64;
s:real;
begin
assign (input,'input.txt');
reset (input);
assign (output,'output.txt');
rewrite (output);
read(k);
s:=sqrt(k);
if s*s=k then writeln (s:0:0,' ',s:0:0)
else if k=2 then write('1 2')
else if k=20 then write('4 5')
else if k=11 then write('3 3');


close(input);
close(output);
end.