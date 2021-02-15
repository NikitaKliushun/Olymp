//Ћукша ƒмитрий ёрьевич, ѕуховический район, 9 класс, 1
var n,k,i,m,max,a,i2:integer;
f1,f2:text;
arr: array [1..100] of integer;
begin
assign(f1,'input.txt');
reset(f1);
assign(f2,'output.txt');
rewrite(f2);

read(f1,n,k);

max:=0;
m:=0;
for i:=1 to 100 do arr[i]:=0;

for i:=1 to n do
begin
     read(f1,a);
     arr[a]:=arr[a]+1;
     if max<a then max:=a;
end;

for i:=1 to max do
begin
    arr[i]:=arr[i] div k;
    m:=m+arr[i];
end;

writeln(f2,m);

for i:=1 to max do
    for i2:=1 to arr[i] do
        write(f2,i,' ');

close(f1);
close(f2);
end.