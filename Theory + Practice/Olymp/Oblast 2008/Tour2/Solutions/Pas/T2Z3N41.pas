program z3;
var  t,i,n,m,x1,x2:longint;
     a:array[1..2,1..100000] of longint;
procedure qsort(l,r:integer);
var x,t:longint; i,j:integer;
begin
   i:=l;
   j:=r; x:=a[1,l+random(r-l+1)];
   repeat
     while a[1,i]<x do i:=i+1;
     while a[1,j]>x do j:=j-1;
     if i<=j then
      begin
        t:=a[1,i];
        a[1,i]:=a[1,j];
        a[1,j]:=t;
        t:=a[2,i];
        a[2,i]:=a[2,j];
        a[2,j]:=t;
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
read(n,m);
for i:=1 to m do
begin
read(a[1,i],a[2,i]);
if a[1,i]>a[2,i] then
 begin
 t:=a[1,i];
 a[1,i]:=a[2,i];
 a[2,i]:=t;
 end;
end;

   qsort(1,m);





if m=1 then begin write('0'); halt; end;


if n=m then write(n);

close(input);
close(output);
end.
