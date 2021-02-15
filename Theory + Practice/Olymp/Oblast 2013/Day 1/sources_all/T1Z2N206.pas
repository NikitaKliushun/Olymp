{Барташ Максим Евгеньевич,г. Жодино,7а,зад.2}
program zad_2;
var a,b,c,k,i:longint;
    f1,f2:text;
begin
assign(f1,'input.txt');
reset(f1);
assign(f2,'output.txt');
rewrite(f2);
read(f1,a,c);
k:=0;
for i:=a to c do
begin
 b:=i;
 if (b mod a=0) and (c mod b=0) then
 k:=k+1;
end;
writeln(f2,k);
close(f1);
close(f2)
end.