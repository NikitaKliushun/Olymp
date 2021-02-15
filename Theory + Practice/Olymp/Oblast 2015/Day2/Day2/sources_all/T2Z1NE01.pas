var s1,s2:ansistring;
    ans,l1,l2:longint;
    p:boolean;
    f:text;
begin
assign(f,'input.txt');
reset(f);
readln(f,s1);
readln(f,s2);
close(f);

assign(f,'output.txt');
rewrite(f);
l1:=length(s1);
l2:=length(s2);
p:=true;
inc(l1);inc(l2);
while p=true do
 begin
  dec(l1);dec(l2);
  if (l1<=0) or (l2<=0) then begin write(f,ans);close(f);halt; end;
  if s1[l1]=s2[l2] then
                        begin
                         inc(ans);
                        end
                   else p:=false
 end;
write(f,ans);
close(f);
end.
