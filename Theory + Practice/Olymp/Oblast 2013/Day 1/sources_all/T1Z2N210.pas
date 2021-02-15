{Величко Владислав Константинович, ГУО СШ№3 г. Солигорска, 10Б класс, T1Z2N210}
Program z2;
var  a,c,ans,i:int64;
BEGIN
assign(input,'input.txt');
assign(output,'output.txt');
reset(input);
rewrite(output);
read(a,c);
ans:=0;
i:=1;
while i<=trunc(sqrt(c)) do
begin
  if c mod i=0 then
    begin
    if i mod a=0 then inc(ans);
    if i<>(c div i) then
      if (c div i) mod a=0 then inc(ans);
    end;
inc(i);
end;
write(ans);
close(input);
close(output);
END.
