{Mazhut' Roman Sergeevich Molodechno 9 1}
program T1Z1N54;
var
k,h,w,min,btf,bh,bw: longint;
f: Text;
begin
min:=10000;
Assign(f,'input.txt');
reset(f);
read(f,k);
close(f);
for h:=1 to k do
 begin
 w:=trunc(k/h);
 btf:=abs(h-w)+k-h*w;
 if btf<min then
  begin
  min:=btf;
  bh:=h;
  bw:=w;
  end;
 end;
Assign(f,'output.txt');
Rewrite(f);
writeln(f,bh,' ' ,bw);
close(f);
end.
