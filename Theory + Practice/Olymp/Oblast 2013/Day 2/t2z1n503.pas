program a1;
var n,k,m,i,j,h,kol,l,min,max:integer;
a,p,pt:array[1..1000] of integer;
f1,f2:text;
begin
assign(f1,'input.txt');
reset(f1);
assign(f2,'output.txt');
rewrite(f2);
readln(f1,n,k);
kol:=0;
min:=1001;
max:=0;
for i:=1 to n do
begin  read(f1,a[i],p[i]); kol:=kol+a[i]; end;
writeln(f2,abs(k-kol));
for i:=1 to n do if (a[i]=0) and (p[i]<>0) then begin kol:=kol+1; a[i]:=a[i]+1; writeln(f2,i); end;
while kol<>k do
if kol<k then
for i:=1 to n do
 begin
   for l:=i to n do
   if ((min>=a[l]) and (a[l]<>p[l])) then
   begin
    min:=a[l]; h:=l;
   end;
 while ((a[h]<>p[h]) and (kol<k)) do
  begin a[h]:=a[h]+1; kol:=kol+1; writeln(f2,h); end;
  end

  else

for i:=1 to n do
 begin
   for l:=i to n do
   if ((max<a[l]) and (a[l]<>0)) then
   begin
    max:=a[l]; h:=l;
   end;
 while (a[h]<>0)and (kol>k) do
  begin a[h]:=a[h]-1; kol:=kol-1; writeln(f2,'-',h); end;
  end;


  close(f1);
  close(f2);
  end.
