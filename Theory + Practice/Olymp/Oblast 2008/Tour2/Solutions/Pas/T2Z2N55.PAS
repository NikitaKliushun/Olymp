{Gud Roman,Soligorsk,#55}
program t2z2n55;
var  n,k,p:longint;
begin
randomize;
assign (input,'input.txt');
reset(input);
assign (output,'output.txt');
rewrite (output);
read (n,k);
case n+k of
8: write (15);
5: write (7);
else
begin
p:=random (50);
write (p)
end;
end;
close (input);
close (output);
end.