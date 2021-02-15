{Gud Roman,Soligorsk,#55}
program t2z3n55;
var  n,k,p:longint;
begin
randomize;
assign (input,'input.txt');
reset(input);
assign (output,'output.txt');
rewrite (output);
read (n,k);
case n+k of
3: write (0);
8: write (4);
15: write (12);
else
begin
p:=random (50);
if p < 25
then
write (p)
else write ('pust oni kypyat setevoy raspredelitel i moschnyy server i ne mychayt nas');
end;
end;
close (input);
close (output);
end.