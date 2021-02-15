var a,b,m,i,j,k,n,z:longint;
    x,y,q:real;
    f,v:text;
begin
assign(f,'input.txt');
reset(f);
assign(v,'output.txt');
rewrite(v);

read(f,a,b,m);
for i:=1 to m do
begin
x:=exp(i*ln(a));
y:=exp(i*ln(b));
q:=x+y;

z:=trunc(q);

if z mod i = 0 then writeln (v,i);
end;

close(f);
close(v);

end.
