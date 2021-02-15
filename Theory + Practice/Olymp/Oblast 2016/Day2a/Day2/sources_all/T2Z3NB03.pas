var a,num:array[1..10001]of longint;
    i,j:longint;
    n,m,k,max,p,kl:longint;
    f:text;

procedure qsort(l,r:longint);
var p,s,i,j:longint;
begin
i:=l; j:=r;
s:=a[(l+r) div 2];
while i<=j do
 begin
  while a[i]<s do inc(i);
  while a[j]>s do dec(j);
  if i<=j then
           begin
            p:=a[i];
            a[i]:=a[j];
            a[j]:=p;

            p:=num[i];
            num[i]:=num[j];
            num[j]:=p;

            inc(i); dec(j);
           end;
 end;
if i<r then qsort(i,r);
if j>l then qsort(l,j);
end;

begin
assign(f,'input.txt');
reset(f);
readln(f,n,k);
for i:=1 to n do
 begin
  read(f,a[i]);
  num[i]:=i;
 end;
close(f);

qsort(1,n);

assign(f,'output.txt');
rewrite(f);
if k=1 then
begin
for i:=1 to n do
 begin
  p:=num[i];
  kl:=0;
  for j:=i+1 to n do
   begin
    if num[j]>p then
                      begin
                       inc(kl);
                       p:=num[j];
                      end;
    if kl>max then max:=kl;
   end;
 end;
writeln(f,max+1);
end
      else
writeln(f,n);
close(f);
end.
