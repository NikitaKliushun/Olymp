program z1;
var f:text;
    n,i,j,m,k,p,bg,en:longint;
    a,mesto:array[1..1000] of longint;
procedure qsort(l,r:longint);
 var i,j,m,p:longint;
begin
 i:=l;j:=r;
 m:=a[(l+r)div 2];
 while i<=j do
  begin
   while a[i]<m do inc(i);
   while a[j]>m do dec(j);
    if i<=j then begin
                  p:=a[i];a[i]:=a[j];a[j]:=p;
                  p:=mesto[i];mesto[i]:=mesto[j];mesto[j]:=p;
                  inc(i); dec(j);
                 end;
  end;
if i<r then qsort(i,r);
if l<j then qsort(l,j);
end;
begin
assign(f,'input.txt');
reset(f);
readln(f,n,k);
for i:=1 to n do
 begin read(f,a[i]);mesto[i]:=i; end;
close(f);
assign(f,'output.txt');
rewrite(f);
qsort(1,n);
m:=n;en:=n;
if n mod 2=1 then begin m:=m+1;en:=en+1; a[n+1]:=30000; end;
if n=3 then if abs(a[1]-a[2])<abs(a[2]-a[3]) then begin writeln(f,'2');write(f,'1 2');close(f);halt; end
                                             else begin writeln(f,'2');write(f,'2,3');close(f);halt; end;
bg:=1;
while m-1>k do
 begin
  bg:=bg+1;en:=en-1;
  m:=m-2;
 end;
writeln(f,m);
for i:=bg to en do
 write(f,mesto[i],' ');
close(f);
end.