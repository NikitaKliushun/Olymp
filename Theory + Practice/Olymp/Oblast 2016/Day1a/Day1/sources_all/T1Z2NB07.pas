var a,b,s:array[1..30]of longint;
   n,y,i,j,k,k1,ii,jj,q,t,ans,m,nn,q1:longint;
begin
assign(input,'input.txt'); reset(input); assign(output,'output.txt');rewrite(output);
read(n,y);
while y<>0do
   begin
   inc(i);
   if odd(y) then begin s[i]:=1; inc(q); end;
   y:=y div 2;
   end;
nn:=n;
while nn<>0 do begin nn:=nn div 2; inc(q1); end;
if q1+q>30 then begin write(-1); close(input); close(output); end;

k:=i;
for i:=1 to n do
   begin
   t:=i;
   j:=0;
   while t<>0 do
      begin
      inc(j);
      if odd(t) then a[j]:=1;
      t:=t div 2;
      end;
   k1:=j;

   for j:=1 to ii do
      b[j]:=0;

   ii:=1;
   for j:=1 to k do
      if s[j]=1 then b[j]:=1;
   j:=1;
   while j<=k1 do
      begin
      if b[ii]<>1 then begin
              b[ii]:=a[j];
              inc(j);
              end;
      inc(ii);
      end;
   for j:=1 to k1 do a[j]:=0;
   m:=1;
   ans:=0;
   for jj:=1 to q1+q do
      begin
      inc(ans,b[jj]*m);
      m:=m*2;
      end;
   write(ans,' ');
   end;

close(input); close(output);
end.
