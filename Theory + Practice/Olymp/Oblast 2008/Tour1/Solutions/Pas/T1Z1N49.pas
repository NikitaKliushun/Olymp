{Zhdanovich Egor Dmitrievich,Minsk,11',N1}
program T1Z1N49;
var
k,h,hkr,wkr,w,kr1,kr2:longint;
f1:text;
begin
assign(f1,'input.txt');
reset(f1);
readln(f1,k);
close(f1);
kr1:=100000;
for h:=1 to (k div 2) do
 for w:=h to k-h do
  begin
  if (h*w)>k then break;
  kr2:=w-h;
  kr2:=kr2+(k-(h*w));
  if (kr2<kr1) and (k>=(h*w)) then begin
                   kr1:=kr2;
                   hkr:=h;
                   wkr:=w;
                  end;
  end;
assign(f1,'output.txt');
rewrite(f1);
writeln(f1,hkr,' ',wkr);
close(f1);
end.
