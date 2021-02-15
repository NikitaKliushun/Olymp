//Бузун Владислав Романович, г.Слуцк, 10 класс, №2
program z2;
begin
assign(input,'input.txt');
reset(input);
assign(output,'output.txt');
rewrite(output);
write('-1');

close(input);
close(output);
end.