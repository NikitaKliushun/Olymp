{$N+}
program z1;
var  i,n,s:byte;
     summ1,summ2:extended;
     a:array[1..100] of longint;
procedure qsort(l,r:integer);
var x,t:longint; i,j:integer;
begin
   i:=l;
   j:=r; x:=a[l+random(r-l+1)];
   repeat
     while a[i]<x do i:=i+1;
     while a[j]>x do j:=j-1;
     if i<=j then
      begin
        t:=a[i];
        a[i]:=a[j];
        a[j]:=t;
        i:=i+1;
        j:=j-1;
      end;
   until i>j;
   if i<r then qsort(i,r);
   if l<j then qsort(l,j);

end;
Begin
assign(input,'input.txt');
assign(output,'output.txt');
reset(input);
rewrite(output);
read(n);
for i:=1 to n do
read(a[i]);
qsort(1,n);


s:=trunc(n/2);
for i:=s downto 1 do
 summ1:=summ1+a[i];
for i:=n downto s+1 do
 summ2:=summ2+a[i];
write(abs(summ1-summ2):0:0);

close(input);
close(output);
End.
