{Никитин Илья, г.Столбцы, 10 "Г' класс, T2Z1NC05}
var
    f1,f2:text;
    s,t:string;
    x,n1,n2,index:longint;
begin
assign(f1,'input.txt');
assign(f2,'output.txt');
reset(f1);
rewrite(f2);
readln(f1,s);
readln(f1,t);
if s=t then writeln(f2,s)
       else writeln(f2,0);
close(f1);
close(f2);
end.