//Ефимович Максим Геннадьевич, город Солигорск, 11 класс, №1
var s,t:ansistring;
    i,j:longint;    
begin
assign(input,'input.txt'); reset(input);
assign(output,'output.txt'); rewrite(output);
readln(s);
readln(t);
i:=length(s);
j:=length(t);
while (i>0) and (j>0) and (s[i]=t[j]) do
 begin
 dec(i);
 dec(j);
 end;
write(length(s)-i);
close(input);
close(output);
end.