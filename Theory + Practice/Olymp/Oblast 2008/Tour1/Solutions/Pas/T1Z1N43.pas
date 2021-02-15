{Mitskyn Frants Viktorovith
Neswizhskaya Belorusskaya Gymnasia
9'a'klass}

var
k: integer;
v: integer;
h,w: integer;

begin
assign (input, 'input.txt');
reset (input);
assign (output, 'output.txt');
rewrite (output);

read (k);
v:=k;
while k <> 0 do
 begin
 v:=v div 2;
 h:=h+1;
 end;

w:=k div h;
write (h,' ',w);

close (input);
close (output);
end.
