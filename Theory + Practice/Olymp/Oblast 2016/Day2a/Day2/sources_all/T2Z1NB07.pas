var d:array[1..100000]of longint;
    n,w,i,p,day,data,ch,ans:longint;
begin
assign(input,'input.txt'); reset(input);
assign(output,'output.txt'); rewrite(output);
read(n,w);
for i :=1 to n do
    read(d[i]);
read(p,day,data);
for i:=1 to n do
   begin
   if p>day
      then ch:=w-p+1+day
      else ch:=day-p+1;
   if ch=w then ch:=0;
   if (data mod w = ch) and (data <= d[i]) then inc(ans);
   p:=(d[i]-(w-p+1)) mod w +1;
   end;
write(ans);
close(input); close(output);
end.

