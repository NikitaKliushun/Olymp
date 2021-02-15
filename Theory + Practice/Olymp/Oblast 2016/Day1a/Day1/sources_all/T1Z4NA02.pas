var f:text;
    b:array[1..300,1..300,0..300]of longint;
    a:array[1..300,1..300]of longint;
    x,i,j,k,n,q,min,ans,minans,s:longint;

begin
 assign(f,'input.txt');
 reset(f);
 read(f,n,k);
 for i:=1 to n do
  for j:=1 to k do
   begin
    read(f,a[i,j]);
    inc(b[i,a[i,j],0]);
    b[i,a[i,j],b[i,a[i,j],0]]:=j;
   end;
 close(f);

 minans:=10000000;
 for i:=1 to n do
  for j:=1 to k do
   begin
    s:=a[i,j];
    ans:=0;
    for q:=1 to n do
     begin
      if q=i
       then continue;
      min:=10000000;

      if b[q,s,0]=0
       then begin ans:=10000000;break;end;
      for x:=1 to b[q,s,0] do
       begin
        if abs(b[q,s,x]-j)<min
         then min:=abs(b[q,s,x]-j);
        if (b[q,s,x]+(k-j)<min)and(b[q,s,x]+k-j > 0)
         then min:=b[q,s,x]+k-j;
        if (j+k-b[q,s,x]<min)AND(j+k-b[q,s,x]>0)
         then min := j+k-b[q,s,x];
       end;
      ans:=ans+min;
     end;
   if ans<minans
    then minans:=ans;
 end;

assign(f,'output.txt');
rewrite(f);
if minans=10000000
then write(f,-1)
else write(f,minans);
close(f);



end.
