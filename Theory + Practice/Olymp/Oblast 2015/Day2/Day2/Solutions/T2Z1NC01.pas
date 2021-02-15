//Козелько Никита Сергеевич, 11 класс, город Солигорск, задача 1
var s1, s2:ansistring;
    s, t, k:longint;

begin

assign(input, 'input.txt'); reset(input);
assign(output, 'output.txt'); rewrite(output);

readln(s1);
readln(s2);

s:=length(s1);
t:=length(s2);

k:=1;
while (k<=s)and(k<=t) do
 begin
 if s1[s-k+1]<>s2[t-k+1] then break
                         else inc(k);
 end;

dec(k);

writeln(k);

close(input); close(output);

end.
