{Мицкун Франц Викторович
Несвижская государственная белорусская гимназия
9'A' класс
задача №1}
var
n,q,z: integer;
a: array [1..1000] of integer;
Begin
Assign(input, 'input.txt');
Reset(input);
Assign(output, 'output.txt');
Rewrite(output);
read (n);
q:=n;
for z:=1 to n do
 Begin
 read (a[z]);
 end;
write (0);
Close(input);
Close(output);
end.
