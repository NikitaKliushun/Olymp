{#55,Гуд Роман, Солигорск}
program t1z2n55;
var a: array  [1..50] of longint;
    n,i,j: byte;
    k:word;
    s,r,c:integer;
begin
assign (input,'input.txt');
reset (input);
assign (output, 'output.txt');
rewrite (output);
read (n);
readln (k);
for i:= 1 to n do
read (a[i]);
for i:= 1 to n do
s:= s + a[i];
if (s div 2) < k
 then write (0)
 else
 begin
 for i:= 1 to n do
 begin
 if (a[i] >= k) and (s-a[i] >= k)
 then inc(r);
 c:= 0;
 while c < k do
 c:=c + a[i];
 if (s-c) >= k
 then inc(r);
 c:=0;
 for j:= 1 to i-1 do
 begin
 if (a[i] + a[j] >= k) and (s-(a[i]+a[j]) >= k)
 then inc(r);
 end;
 end;
 write (r);
 end;
close (input);
close (output);
end.
