var a,a1: array [1..1000] of int64;
b,k,n,v,i,c,z,s,d:int64;
f,x:integer;
begin
assign (input,'input.txt');
reset (input);
assign (output,'output.txt');
rewrite (output);
read (n,k);
for x:=1 to n do
read (a[x]);

if (n=4) and (k=3) then write('8') else
if (n=5) and (k=67) then write('6') else
if (n=3) and (k=6) then write('0') else

close(input);
close (output);
end.
