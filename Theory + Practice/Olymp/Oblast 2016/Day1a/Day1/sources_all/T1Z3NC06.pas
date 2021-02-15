{Елисеев Иван Алексеевич, г.Солигорск, 8 класс, Z3}
program T1Z3NC06;
var a,b:array[1..100000]of integer;
    n,i,c,x,y,max:longint;
begin
assign(input,'input.txt');
assign(output,'output.txt');
reset(input);
rewrite(output);
readln(n);
fillchar(b,sizeof(b),0);
for i:=1 to n do
read(a[i]);
for i:=1 to n do
inc(b[a[i]]);
max:=a[1];
for i:=2 to n do
if a[i]>max then max:=a[i];
for i:=1 to max do
if b[i]>0 then begin
x:=b[i]; c:=i; break; END;
for i:=c+1 to max do
if b[i]>0 then begin
y:=b[i]; break; end;
if x>y then writeln(x)
else writeln(y);
close(input);
close(output);

end.
