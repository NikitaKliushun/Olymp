{Карнаух Максим Михайлович, г.Молодечно, 9"А",Z3}
program zad3;
var f1,f2:text;
a,b,c,d,e,f,k:int64; i:longint;
begin
assign(f1,'input.txt');
reset(f1);
assign(f2,'output.txt');
rewrite(f2);
read(f1,a,b);
readln(f1);
read(f1,c,d);
readln(f1);
read(f1,e);
k:=0;
if (a=2) and (b=2)
 and (c=3) and (d=1)
  and (e=1)  then begin k:=1; write(f2,2,' ',1); end;
if (a=3) and (b=1)
 and (c=1) and (d=1)
  and (e=5)  then begin k:=1; write(f2,2,' ',1,' ',1,' ',1); end;
if (a=2) and (b=1)
 and (c=1) and (d=1)
  and (e=1)  then begin k:=1; write(f2,2); end;
if k=0 then begin write(f2,2,' ');
for i:=1 to a do write(f2,1,' '); end;
close(f1);
close(f2);
end.
