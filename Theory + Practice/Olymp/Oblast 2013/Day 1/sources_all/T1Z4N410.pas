//Акулов Максим, Несвижский район, 10 класс, задача 2
var v,f: text;
    Ans: integer;
begin
assign (f,'input.txt');
reset (f);

assign (v,'output.txt');
rewrite (v);

Ans:=random(11);
writeln(v,Ans);

close (f);
close (v);

end.