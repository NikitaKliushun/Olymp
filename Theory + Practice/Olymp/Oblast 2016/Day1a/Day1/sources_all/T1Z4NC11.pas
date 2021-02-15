{Северин Клим Михайлович,г.Вилейка,№4}
program ghi;
var a,b:array[1..2000,1..2000]of integer;
st,p,i,j,n,k,t,tyr,s,h,time,l,temp,re,kl,qwe:integer;
d,time1:array[1..10000]of integer;
f1,f2:text;
begin
assign(f1,'input.txt');
assign(f2,'output.txt');
reset(f1);
rewrite(f2);
read(f1,n);
readln(f1,k);
kl:=1;
for i:=1 to n do begin
  for j:=1 to k-1 do
    read(f1,a[i,j]);
    readln(f1,a[i,n]);
    end;
    b:=a;
   for h:=1 to k do begin
  t:=a[1,h];
  for j:=1 to n do
    if a[j,h]=t then s:=s+1;
   if s=n then p:=1;
   end;
   if p=1 then begin write(f2,time); tyr:=1; end;
  if tyr<>1 then begin
j:=0;
l:=1;
  l:=k*k;
for i:=1 to l do begin
  time:=0;
  for j:=1 to n do  for qwe:=1 to d[j] do begin
    for h:=k downto 2 do begin
      temp:=a[j,h-1];
      a[j,h-1]:=a[j,h];
      a[j,h]:=temp;
      end;
      inc(time);
      end;
  for h:=1 to k do begin
  t:=a[1,h];
  for j:=1 to n do
    if a[j,h]=t then s:=s+1;
   if s=n then p:=1;
   end;
   if p=1 then begin time1[kl]:=time; inc(kl); end;
   st:=1;
  d[1]:=d[1]+1;
 for re:=1 to 10000 do
  if d[re]>k div 2 then begin d[re+1]:=d[re+1]+1; d[re]:=0; end;
  a:=b;
   end;
   for i:=1 to l do begin
  time:=0;
  for j:=1 to n do  for qwe:=1 to d[j] do begin
    for h:=1 to k-1 do begin
      temp:=a[j,h];
      a[j,h]:=a[j,h+1];
      a[j,h+1]:=temp;
      end;
      inc(time);
      end;
  for h:=1 to k do begin
  t:=a[1,h];
  for j:=1 to n do
    if a[j,h]=t then s:=s+1;
   if s=n then p:=1;
   end;
   if p=1 then begin time1[kl]:=time; inc(kl); end;
   st:=1;
  d[1]:=d[1]+1;
 for re:=1 to 10000 do
  if d[re]>k div 2 then begin d[re+1]:=d[re+1]+1; d[re]:=0; end;
  a:=b;
   end;

   if time1[kl]=0 then write(f2,'-1') else begin
        for i:=1 to kl do
                if time1[i]<n then n:=time1[i];
                write(f2,n);
                end;  end;
   close(f1);
   close(f2);
   end.
