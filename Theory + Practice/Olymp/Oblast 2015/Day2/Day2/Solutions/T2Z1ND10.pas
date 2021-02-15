{Бузун Владислав Романович, г.Слуцк, 9 класс, задача номер 1}
program z1;
var
s,s2:ansistring;
x:char;
otv,i,k,min:longint;
begin
assign(input,'input.txt');
reset(input);
assign(output,'output.txt');
rewrite(output);

while not eoln do
 begin
  read(x);
  s:=x+s;
 end;
readln;
while not eof do
 begin
  read(x);
  s2:=x+s2;
 end;

if length(s) < length(s2) then min:=length(s)
                          else min:=length(s2);
for i:=1 to min do
 if (s[i]=s2[i])and(k=0) then inc(otv)
                         else inc(k);
write(otv);

close(input);
close(output);
end.
