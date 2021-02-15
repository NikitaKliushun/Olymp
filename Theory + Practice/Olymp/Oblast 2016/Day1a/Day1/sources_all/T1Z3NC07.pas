program z1;
var j,n,i,b,nn:integer;
f1,f2:text;
a:array[1..5000] of byte;
l:array[1..100 ]of byte;
begin
assign(f1,'input.txt');
reset(f1);
assign(f2,'output.txt');
rewrite(f2);

readln(f1,N);
nn:=n;


for I:=1 to n do 
read(f1,a[i]);
for i:=1 to n-1 do begin
if (a[i]>a[i+1])and (a[i-1]<=a[i+1]) then begin
b:=b+1;
l[b]:=a[i];
end;
end;

for i:=1 to n-1 do begin
if (a[i]>a[i+1])and (a[i]<=a[i+2]) then begin

b:=b+1;
l[b]:=a[i+1];
end;

end;


for I:=1 to n do 
for J:=1 to b do 
if a[i]=l[j] then nn:=nn-1;

writeln(f2,nn);
close(f2);
close(f1);
end.