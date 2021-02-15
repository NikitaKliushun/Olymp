//Ефимович Максим Геннадьевич, 11 класс, г.Солигорск, №2
var a,b,i,j:longint;
    ans:int64;
begin
assign(input,'input.txt'); reset(input);
assign(output,'output.txt'); rewrite(output);
readln(a,b);
ans:=0;
if a>b then begin
            i:=a;
            a:=b;
            b:=i;
            end;
for i:=1 to a do
 for j:=i to a+b do
  begin
  if (j mod 2<>0) and (i mod 2<>0) then
                begin
                if (((i+1) div 2)*(j mod 2)+((i-1) div 2)*((j+1) div 2)<=a) and (((j+1) div 2)*((i+1) div 2)+(i div 2)*(j div 2)<=b) then inc(ans);
                end;
  if (j mod 2=0) and (i mod 2=0) then
                begin
                if (i*(j div 2)<=a) and (i*(j div 2)<=b) then inc(ans);
                end;
  if (j mod 2=0) and (i mod 2<>0) then
                begin
                if ((i div 2)*(j div 2)+((i+1) div 2)*(j div 2)<=a) and (((i+1) div 2)*(j div 2)+((i div 2)*(j div 2))<=b) then inc(ans);
                end;
  if (j mod 2<>0) and (i mod 2=0) then
                begin
                if ((i div 2)*(j div 2)+(i div 2)*((j+1) div 2)<=a) and ((i div 2)*((j+1) div 2)+(i div 2)*(j div 2)<=b) then inc(ans);
                end;
  end;
write(ans);
close(input);
close(output);
end.
