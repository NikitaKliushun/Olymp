program n1;
var
s,t,s1,t1:ansistring;
i,j,ot,ls,uk,lt:longint;
Function min(x,y:longint):longint;
 Begin
  if x<y then min:=x else min:=y;
 end;
Begin
{Масаковский Дмитрий Владимирович, г.Слуцк,9класс, задача 1}
assign(input,'input.txt');
assign(output,'output.txt');
reset(input);
rewrite(output);
readln(s);
read(t);
ls:=length(s);
lt:=length(t);

ot:=0;
uk:=min(ls,lt);
if uk=lt then begin
for i:=uk downto 1 do
 if t[i]<>s[i+abs(ls-lt)] then
   begin
    write(ot); exit;
   end
  else inc(ot);
            end
              else
begin
for i:=uk downto 1 do
 if s[i]<>t[i+abs(ls-lt)] then
   begin
    write(ot); exit;
   end
  else inc(ot);
            end;
write(ot);



close(input);
close(output);
end.
