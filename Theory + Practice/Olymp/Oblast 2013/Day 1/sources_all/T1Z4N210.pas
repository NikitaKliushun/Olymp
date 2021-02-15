{Величко Владислав Константинович, ГУО СШ№3 г. Солигорска, 10Б класс, T1Z4N210}
Program z4;
var an:array[1..200000] of longint;
    am:array[1..200000] of longint;
    n,m,k,f,i,ans:longint;
BEGIN
assign(input,'input.txt');
assign(output,'output.txt');
reset(input);
rewrite(output);
ans:=0;
readln(n,m,k);
for i:=1 to m do
read(am[i]);
readln;
for i:=1 to n do
read(an[i]);
readln;
read(f);
for i:=1 to n do
if an[i]=f then inc(ans);
if m<ans then ans:=m;
write(ans);
close(input);
close(output);
END.
