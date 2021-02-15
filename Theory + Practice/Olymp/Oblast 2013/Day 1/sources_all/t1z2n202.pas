{Ефимович Максим Геннадьевич, г.Солигорск, 9 "Б" класс, №1}
var a,c,ans,i:int64;
begin
assign(input,'input.txt'); reset(input);
assign(output,'output.txt'); rewrite(output);
readln(a,c);
i:=a;
ans:=0;
while i<=trunc(c) do
  begin
  if (i mod a=0) and (c mod i=0)
     then inc(ans);
  inc(i);
  end;
writeln(ans);
close(input);
close(output);
end.
