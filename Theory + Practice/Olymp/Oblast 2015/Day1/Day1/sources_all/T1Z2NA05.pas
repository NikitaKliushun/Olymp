var a,b,i,s,x,min,k:int64;
begin
assign(input,'input.txt'); reset(input);
assign(output,'output.txt'); rewrite(output);
read(a,b);
if a<b then min:=a
       else min:=b;
if b+a=b*2 then k:=0 else k:=1;
i:=1;
while i*i div 2<=min do
  begin
  if odd(i)
    then s:=min*2+k
    else s:=min*2;
  inc(x,s div i -i+1);
  inc(i);
  end;
write(x);
close(input); close(output);
end.



