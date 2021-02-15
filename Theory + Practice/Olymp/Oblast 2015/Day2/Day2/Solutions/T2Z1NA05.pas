var s1,s2:ansistring;
    s,d1,d2:longint;
begin
assign(input,'input.txt'); reset(input);
assign(output,'output.txt'); rewrite(output);
readln(s1);
read(s2);
d1:=length(s1);
d2:=length(s2);
s:=0;
while (s1[d1]=s2[d2]) and (d1>0) and (d2>0) do
   begin
   inc(s);
   dec(d1);
   dec(d2);
   end;
write(s);
close(input); close(output);
end.
