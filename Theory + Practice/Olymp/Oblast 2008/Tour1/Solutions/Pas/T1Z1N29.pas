{Процкевич Александр г.копыль}
program hgj;
var
k,l,i,min,h1,w1,h,w,p:longint;
begin
k:=0;
min:=1000000;
assign (input,'input.txt');
reset(input);
read(input,k);
for i:=1 to trunc(k/2) do
begin
h1:=i;
w1:=trunc(k/i);
l:=abs(h1-w1);
p:=k-i*trunc(k/i);
if (l+p)<min then
 begin
 min:=l+p;
 h:=h1;
 w:=w1;
 end;
end;
assign (output,'output.txt');
rewrite (output);
write (h,' ',w);
close(output);
end.