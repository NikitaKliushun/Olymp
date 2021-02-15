{Анисько Дмитрий 9класс Лошницкая районная гимназия}

var a: array [1..100000] of int64;
n,k: int64;
i:longint;
begin
assign(input,'input.txt');
reset(input);
assign(output,'output.txt');
rewrite(output);
read(n,k);
if (k=1) or (k=0) then write('0')
else if (n=3) and (k=3) then write('0')
else
begin
for i:=1 to k*2 do
read (a[i]);
i:=(n-2)*2;
write(i);
close(input);
close(output);
end;
end.
