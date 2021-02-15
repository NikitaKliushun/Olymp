//Акулов Максим, Несвижский район, 10 класс, задача 2
var v,f: text;
    a,c,b,i,Ans: integer;
begin
assign (f,'input.txt');
reset (f);

assign (v,'output.txt');
rewrite (v);
readln(f,a,c);

for i:=1 to c do begin
                 if (c mod i=0) and (i mod a=0) then inc (Ans);
                 end;

writeln(v,Ans);

close (f);
close (v);

end.