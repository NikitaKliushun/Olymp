var a,beg:array[0..100001]of int64;
    m,w,s,b,t,fd,ans:int64;
    i:longint;
    f:text;
begin
assign(f,'input.txt');
reset(f);
readln(f,m,w);
for i:=1 to m do
 read(f,a[i]);
readln(f);
read(f,s,b,t);
close(f);

assign(f,'output.txt');
rewrite(f);


beg[1]:=s;
if beg[1]<b then fd:=b-beg[1]+1
            else fd:=(w-beg[1]+b)mod w +1;
  if ((t-fd) mod w=0)
  and (t-fd>=0) then inc(ans);


for i:=2 to m do
 begin
  if t>a[i] then continue;
  beg[i]:=(beg[i-1]+a[i-1] mod w) mod w;
  if beg[i]=0 then beg[i]:=w;
  if beg[i]<b then fd:=b-beg[i]+1
              else fd:=(w-beg[i]+b)mod w +1;
  if ((t-fd) mod w=0)
  and (t-fd>=0) then inc(ans);
 end;

write(f,ans);
close(f);
end.
