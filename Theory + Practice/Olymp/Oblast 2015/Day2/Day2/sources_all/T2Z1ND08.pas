program z_1;
var s,s1:string;
    a,b,i,n:integer;
    f1,f2:text;
begin
assign(f1,'input.txt');
reset(f1);
assign(f2,'output.txt');
rewrite(f2);
readln(f1,s);
readln(f1,s1);
n:=length(s);
b:=length(s1);
if n>b then for i:=1 to n-b do
               s1:=' ' + s1;
if n<b then for i:=1 to b-n do
               s:=' ' + s;
if n=b then n:=b;
repeat
  if s[n]<>s1[n] then break;
  a:=a+1;
  n:=n-1;
until s[n]<>s1[n];
write(f2,a);
close(f1);
close(f2);
end.
