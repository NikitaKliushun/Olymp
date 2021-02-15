{Козелько Никита Сергеевич, город Солигорск, 9 класс, задача 2}
var a, c, i, k:int64;
begin
assign(input, 'input.txt');reset(input);
assign(output, 'output.txt');rewrite(output);
read(a, c);
k:=1;
i:=a;
while i<c do
 begin
 if (c mod i=0) then inc(k);
 inc(i, a);
 end;
 write(k);
close(input);close(output);
end.