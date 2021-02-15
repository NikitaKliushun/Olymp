//Рожнов Максим Вячеславович
program T2Z1NE14 ;
var
yk1,yk2,p,res:int64;
s,t:ansistring;
begin
assign(input,'input.txt');
assign(output,'output.txt');
reset(input);
rewrite(output);
readln(s);
read(t);
yk1:=length(s);
yk2:=length(t);
p:=0;
while (yk1<>0)and(yk2<>0)and(p=0) do begin
if s[yk1]=t[yk2] then begin
                      inc(res);
                      dec(yk1);
                      dec(yk2);
                      end
                 else inc(p);
                 end;
writeln(res);

close(input);
close(output);
end.
