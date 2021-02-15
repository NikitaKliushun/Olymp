{Карнаух Максим Михайлович, г. Молодечно, 9А, T2Z2}
program z2;
var f1,f2:text;
kub:array[1..1000] of longint;
d,chl,prog,ind,ukz,k:int64;
i,j:longint;
begin
assign(f1,'input.txt');
reset(f1);
assign(f2,'output.txt');
rewrite(f2);
read(f1,d);
k:=0;
for i:=1 to 1000 do
  begin
  kub[i]:=sqr(i)*i;
  if kub[i]=d then k:=1;
  end;
chl:=1;
i:=1;
ind:=1;
ukz:=1;
if k=0 then
  begin
  while ukz=1 do
    begin
    prog:=d+(ind*d);
    ind:=ind+1;
    for i:=1 to 1000 do
      begin
      if kub[i]<>prog then ukz:=1
                      else
                      begin
                      ukz:=0;
                      break;
                      end;
      end;
    end;
  end
  else ind:=1;
write(f2,ind);










close(f1);
close(f2);
end.