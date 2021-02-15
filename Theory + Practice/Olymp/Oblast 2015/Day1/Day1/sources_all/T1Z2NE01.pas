uses math;
var am,bm,maxk,mink,ans,r,c,rc,rr:int64;
    p,pp:boolean;
    f:text;

begin
assign(f,'input.txt');
reset(f);
read(f,am,bm);
close(f);
maxk:=max(am,bm);
mink:=min(am,bm);
assign(f,'output.txt');
rewrite(f);
r:=0;c:=0;
p:=true;
pp:=true;
while pp=true do
 begin
  inc(r);c:=r-1;
  p:=true;
  while p=true do
   begin
    inc(c);
    rc:=(r*c+1)div 2;
    if (rc<=maxk) and ((r*c-rc)<=mink) then inc(ans)
                                                      else p:=false;
   end;
  inc(r);
  rr:=r*r;
  if (rr)div 2>mink then pp:=false;
  dec(r);
 end;
 write(f,ans);
 close(f);
end.
