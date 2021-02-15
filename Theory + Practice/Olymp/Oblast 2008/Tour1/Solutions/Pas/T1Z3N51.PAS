{Chopchits Alexander Sergeevich Soligorskiy raion 9'"B"klass z3}
program t1z3n51;
var  f1,f2:text;
     i2,i1,q,m1,i,m,n:longint;
     b,a:array[1..250]of longint;
begin
assign(f1,'input.txt');
assign(f2,'output.txt');
reset(f1);
rewrite(f2);
read(f1,n);
read(f1,m);
readln(f1);


i:=1;
while i<=n do
begin
a[i]:=i;
i:=i+1;
end;
m1:=1;

 while m1<=m do
 begin
 read(f1,q);
 i:=1;
   while q<>a[i] do
   i:=i+1;
 write(f2,i,' ');
  b[1]:=a[i];
  i:=i+1;
       for i1:=i to n do
       b[i1]:=a[i1];
  i:=i-1;
  i2:=2;
    while i2<=i do
    begin
    b[i2]:=a[i2-1];
    i2:=i2+1;
    end;
  for i:=1 to n do
  a[i]:=b[i];
  m1:=m1+1;
  end;
  close(f2);
  close(f1);
 end.
