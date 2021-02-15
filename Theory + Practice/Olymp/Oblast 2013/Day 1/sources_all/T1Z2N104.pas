var a,c,i,ans,q,z:longint;
    f,v:text;
begin
assign(f,'input.txt');
reset(f);
assign(v,'output.txt');
rewrite (v);

read(f,a,c);

z:=trunc(sqrt(c));
for i:=1 to z do
begin
if (c mod i =0)  and (i mod a =0)then inc(ans);

if c mod i =0 then begin
                   q:=c div i;
                   if q mod a =0 then inc(ans);
                   end;
end;
writeln(v,ans);
close(f);
close(v);
end.

