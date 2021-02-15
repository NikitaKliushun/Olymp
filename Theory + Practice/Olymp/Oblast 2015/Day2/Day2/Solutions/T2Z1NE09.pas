var s, t :ansistring;
    l1, l2, i, j, p, k: longint;

begin

assign (input,'input.txt');
assign (output,'output.txt');
reset(input);
rewrite(output);

readln(s);
readln(t);
l1 := length(s);
l2 := length(t);
i := l1;
j := l2;
k := i - j;
p := 0;


if k >= 0 then
while (j > 0)and (t[j]=s[j + k])  do
                                    dec(j)
else
begin
k := abs(k);
while (i > 0)and (t[i + k] =s[i])  do
                                    dec(i);

end;
if j < l2 then writeln( l2 - j) else
writeln(l1-i);


close(input);
close(output);
end.
