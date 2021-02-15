//Рожнов Максим Вячеславович
program T1Z1NE14;
function min(x,y:longint):longint;
         begin
         if x>y then min:=y
         else min:=x;
         end;
function max(x,y:longint):longint;
         begin
         if x<y then max:=y
         else max:=x;
         end;
var
sum:int64;
a,b,i,j,p,R,c:longint;
begin
assign(input,'input.txt');
assign(output,'output.txt');
reset(input);
rewrite(output);
read(a,b);
if (A=1)or(B=1) then begin
                   if max(a,b)=1 then writeln(2);
                   if max(a,b)>=2 then writeln(3);
                   end

else if(a>=2)and(b>=2)then begin
for R:=2 to ((a+b)div 2)+1 do
 for C:=r to((a+b)div 2)+1 do begin
                  if (a>=R*C/2)and(b>=R*C/2)and((R*C)mod 2=0)then inc(sum);
                  if (r*c mod 2<>0)and((a>=(r*c/2)+1)and(b>=(r*c/2))or(b>=(r*c/2)+1)and(a>=(r*c/2)))       then inc(sum);
                  end;
writeln(sum+3+min(a,b));
end;
close(input);
close(output);
end.
