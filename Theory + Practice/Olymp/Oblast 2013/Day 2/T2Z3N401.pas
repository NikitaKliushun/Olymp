{Монич Денис Николаевич, г. Борисов, 11 "А", задача №3}
program t2z3n401;
var n,m,r:longint;
    f1,f2:text;

begin
assign(f1,'input.txt');
assign(f2,'output.txt');
reset(f1);
rewrite(f2);
read(f1,n);
readln(f1,m);
r:=n-m;
if r<=0 then writeln(f2,'0')
        else writeln(f2,r);
close(f1);
close(f2);
end.
