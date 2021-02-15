program T1Z2N203;
var i:longint;
    j,a,c,ans:int64;
    f:text;
begin
assign(f,'input.txt');
reset(f);
read(f,a,c);
close(f);
for
i:=1 to Round(sqrt(c)) do
 begin
  if (c mod i=0)and(i<>c div i) then begin
                                      j:=c div i;if (j mod a=0) and (j>=a) then inc(ans);
                                      if (i mod a=0)and (i>=a) then inc(ans);
                                     end;
  if (c mod i=0)and(i=c div i) then begin
                                      inc(ans);
                                     end;
 end;
assign(f,'output.txt');
rewrite(f);
write(f,ans);
close(f);
end.
