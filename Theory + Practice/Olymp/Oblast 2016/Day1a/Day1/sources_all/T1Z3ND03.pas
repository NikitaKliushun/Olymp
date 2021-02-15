//Savostin Anton Dmitryevich Marjina Gorka 9 klass N1
program t1z1nd03;
var f1,f2:text;

begin
assign(f1,'input.txt');
assign(f2,'output.txt');
reset(f1);
rewrite(f2);

write(f2,5);

close(f1);
close(f2);
end.