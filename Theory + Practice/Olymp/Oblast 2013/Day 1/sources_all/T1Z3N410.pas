//Акулов Максим, Несвижский район, 10 класс, задача 3
var f,v: text;
    a: int64;
begin
assign (f,'input.txt');
reset (f);

assign (v,'output.txt');
rewrite (v);

write (v,random(50));

close (f);
close (v);

end.