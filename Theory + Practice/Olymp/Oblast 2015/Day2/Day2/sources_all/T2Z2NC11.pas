//Ефимович Максим Геннадьевич, город Солигорск, 11 класс, №2
var d,ans:int64;
    i:longint;
begin
assign(input,'input.txt'); reset(input);
assign(output,'output.txt'); rewrite(output);
readln(d);
ans:=0;
for i:=1 to round(sqrt(d))do
 begin
 if (d mod (i*i)=0) and (d div (i*i)=i) then begin write(1); close(input); close(output); halt; end;
 end;
if sqrt(d)=round(sqrt(d)) then ans:=round(sqrt(d))
                          else ans:=d*d;
write(ans);
close(input);
close(output);
end.
