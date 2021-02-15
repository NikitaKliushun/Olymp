{Монич Денис Николаевич, г. Борисов, 11 "А", задача №2}
Program t1z2n401;
Var a,c,a1,k:int64;
    f1,f2:text;

begin
assign(f1,'input.txt');
assign(f2,'output.txt');
reset(f1);
rewrite(f2);
read(f1,a);
read(f1,c);
k:=0;
a1:=a;
while a1<=c do
 begin
   if c mod a1=0 then k:=k+1;
   a1:=a1+a;
 end;

write(f2,k);
close(f1);
close(f2);
end.
