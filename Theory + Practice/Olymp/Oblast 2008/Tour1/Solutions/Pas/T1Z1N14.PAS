{Popzov Alexei Borisov}
program krasivaia;
var
n,m,krasota,i,j,l,kr:longint;
f,f1:text;
begin
assign(f,'input.txt');
assign(f1,'output.txt');
reset(f);
readln(f,n);
close(f);
m:=trunc(sqrt(n));
krasota:=n-m*m;
if krasota=0 then begin
rewrite(f1);
writeln(f1,m,' ',m);
close(f1);
exit;
end;
l:=m;
for i:=m downto 1 do begin
j:=n div i;
kr:=abs(i-j)+(n-i*j);
if kr<krasota then l:=i;
if kr>krasota then begin
rewrite(f1);
writeln(f1,l,' ',n div l);
close(f1);
exit;
end;
end;
rewrite(f1);
writeln(f1,l,' ',n div l);
close(f1);
end.
