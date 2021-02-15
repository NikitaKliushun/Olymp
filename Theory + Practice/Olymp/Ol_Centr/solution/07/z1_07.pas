var a:array[1..4] of longint;
    i,j,k,q,k2:longint;
begin
for i:=1 to 4 do
read(a[i]);

for i:=1 to 3 do
 for j:=1 to 3 do
  if a[j]<a[j+1] then begin
                        q:=a[j];
                        a[j]:=a[j+1];
                        a[j+1]:=q;
                      end;
k:=a[1]*a[2];
k2:=a[3]*a[4];
write(k+k2);
end.
