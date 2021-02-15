{Свиhиденко Гhигоhий,11'Б, гимназия г.Дзеhжинска }
{$-02}
PROGRAM t1z1n52;
var k,xh,xw:int64;
    xkrs,krs,h,w:longint;
begin
assign(input,'input.txt');
assign(output,'output.txt');
reset(input);
rewrite(output);
read(k);
xh:=trunc(sqrt(k));
xw:=k div xh;
xkrs:=abs(xw-xh)+k-xw*xh;
for h:=trunc(sqrt(k))div 2 downto 2 do
  begin
  w:=k div h;
  krs:=abs(w-h)+k-w*h;
  if (h*w<k)and (krs<xkrs) then
                           begin
                             xkrs:=krs;
                             xw:=w;
                             xh:=h;
                           end;
  end;
  writeln(xh,' ',xw);

close(input);
close(output);
end.
