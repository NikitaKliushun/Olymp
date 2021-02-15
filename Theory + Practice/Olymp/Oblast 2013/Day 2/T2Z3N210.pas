{Величко Владислав Константинович, ГУО СШ№3 г. Солигорска, 10Б класс T2Z3N210}
program z3;
var  n,m,ans:int64;
BEGIN
assign(input,'input.txt');
assign(output,'output.txt');
reset(input);
rewrite(output);
read(n,m);
if n mod 2=0 then ans:=((n*(n div 2)) div 2)-m
else ans:=(((n+1)*(n div 2)) div 2)-m;
write(ans);
close(input);
close(output);
END.
