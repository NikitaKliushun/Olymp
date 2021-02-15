{Монич Денис Николаевич, г. Борисов, 11 "А", задача №4}
program t1z4n401;
var n,m,k:longint;
begin
assign(f1,'input.txt');
assign(f2,'output.txt');
reset(f1);
rewrite(f2);
read(f1,n);
read(f1,m);
read(f1,k);
write(f2,k-1);
close(f1);
close(f2);
end.
