program zad2;
var A,B,C:integer;
    f1,f2:text;
begin
Assign(input,'in.txt');
Reset(input);
Assign(output,'out.txt');
rewrite(output);
read(A,C);
if A=C then B:=1;
if C div A= 5 then B:=3;
if C div A= 6 then B=4;

write(B);

close(input);
close(output);
end.
