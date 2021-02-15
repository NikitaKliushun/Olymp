program z1;
var r,w,s,b,t:integer;d:array[1..1000] of integer;te:text;days,k,e,i:integer;
begin
assign(te,'input.txt');
reset(te);
read(te,r);
readln(te,w);
for i:=1 to r do begin if i=r then readln(te,d[i]) else read(te,d[i]);end;
read(te,s);read(te,b);read(te,t);
close(te);
while s<>b do begin
if s+1<=w then begin e:=e+1; s:=s+1; end else begin s:=1;e:=e+1;end;  end;
k:=1;

while k<=r do begin
if e+w<=d[k] then e:=e+w else begin e:=w+e-d[k];k:=k+1;end;
if e=t then days:=days+1;
end;
assign(te,'output.txt');
rewrite(te);
write(te,days);
close(te);
end.




