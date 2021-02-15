{$N+}
{Chopchits Alexander Sergeevich Soligorskiy raion 9'"B" z1}
program t2z1n51;
var f1,f2:text;
   summa,b:extended;
   pol,x,i,n:longint;
   a:array[1..200]of extended;
begin
assign(f1,'input.txt');
reset(f1);
readln(f1,n);
for i:=1 to n do
read(f1,a[i]);
close(f1);
  i:=1;
 while i<=n-1 do
 begin
   if a[i]<a[i+1]
   then
   begin
   b:=a[i+1];
   a[i+1]:=a[i];
   a[i]:=b;
   i:=0;
   end;
   i:=i+1;
 end;

 assign(f2,'output.txt');
 rewrite(f2);
 summa:=0;
 pol:=n div 2;
 for i:=1 to pol do
 a[i]:=a[i]-a[i+pol];
 for i:=1 to pol do
 summa:=summa+a[i];
 write(f2,summa:0:0);
 close(f2);
end.