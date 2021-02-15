{Shmatkov Dmitry Vladimirovich, 11 klass, Slutsk}
program z;
 var
  a,num:array[1..100100] of longint;
  n,k,i,j,min,nmin:longint;

 procedure qsort(l,r:longint);
  var i,j,t,tnum,x:longint;
  begin
   i:=l; j:=r; x:=a[l+random(r-l+1)];
   repeat
    while a[i]<x do inc(i);
    while a[j]>x do dec(j);
    if i<=j
     then
      begin
       t:=a[i];
       a[i]:=a[j];
       a[j]:=t;
       tnum:=num[i];
       num[i]:=num[j];
       num[j]:=tnum;
       inc(i);
       dec(j);
      end;
   until i>j;
   if i<r then qsort(i,r);
   if l<j then qsort(l,j);
  end;

 begin
  assign(input,'input.txt');
  assign(output,'output.txt');
  reset(input);
  rewrite(output);

  read(n,k);

  for i:=1 to n do
   begin
    read(a[i]);
    num[i]:=i;
   end;

  qsort(1,n);

  min:=2000000000;

  for i:=1 to n-k+1 do
   begin
    if a[i+k-1]-a[i]<min
     then
      begin
       min:=a[i+k-1]-a[i];
       nmin:=i;
      end;
   end;

  writeln(k);

  for i:=nmin to nmin+k-1 do
   write(num[i],' ');

  close(input);
  close(output);
end.