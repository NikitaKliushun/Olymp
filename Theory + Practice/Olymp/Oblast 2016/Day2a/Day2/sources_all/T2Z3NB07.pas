var a:array[0..10000000]of longint;
    c:array[0..100000]of longint;
    i,n,k,j,ii,max:longint;
begin
assign(input,'input.txt'); reset(input);
assign(output,'output.txt'); rewrite(output);
read(n,k);
for i:=1 to n do
   read(a[i]);
for i:=1 to k-1 do
   for j:=1 to n do
      if odd(i) then
         a[i*n+j]:=a[n-j+1]   else
         a[i*n+j]:=a[j];
c[a[1]]:=1;
for i:=2 to n*k do
   begin
   ii:=a[i];
   while (c[ii-1]=0) and (ii>1) do dec(ii);
   if ii=1 then c[a[i]]:=1 else c[a[i]]:=c[ii-1]+1;
   if c[a[i]]>max then max:=c[a[i]];
   end;
write(max);
close(input); close(output);
end.