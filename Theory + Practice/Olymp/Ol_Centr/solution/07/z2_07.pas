var n,k,l,i,j,max,ans:longint;
    a:array[1..1000] of longint;
begin
max:=-1;
read(n);
for i:=1 to n do
begin
 read(a[i]);
 if a[i]>max then max:=a[i];
end;

for i:=1 to n do
if a[i]=max then begin
                    max:=i;
                    break;
                 end;


ans:=(max-1)+a[1];

for i:=1 to max-1 do
if a[i]<a[i+1] then ans:=ans+(a[i+1]-a[i])
                 else  ans:=ans+(a[i]-a[i+1]);

write (ans);
end.
