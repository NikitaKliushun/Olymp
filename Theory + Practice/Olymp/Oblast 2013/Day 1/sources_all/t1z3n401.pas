{Монич Денис Николаевич, г. Борисов, 11 "А", задача №3}
program t1z3n401;
Var n,m:integer;
    f1,f2:text;

begin
assign(f1,'input.txt');
assign(f2,'output.txt');
reset(f1);
rewrite(f2);
read(f1,n);
readln(f1,m);

write(f2,n*m-2);
close(f1);
close(f2);
end.
