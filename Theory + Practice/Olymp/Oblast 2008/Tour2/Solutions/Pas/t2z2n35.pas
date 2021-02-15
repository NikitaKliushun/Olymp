{Анисько Дмитрий 9класс Лошницкая районная гимназия}

var s: string;
n,k:int64;
b,c:longint;
begin
assign(input,'input.txt');
reset(input);
assign(output,'output.txt');
rewrite(output);
read(n,k);
readln(s);
if n=1 then write('1')
else if n=2 then write('2')
else begin
b:=n-3;
b:=trunc(3*b);
c:=n+b;
writeln (c);
close(input);
close(output);
end;
end.

































































































































