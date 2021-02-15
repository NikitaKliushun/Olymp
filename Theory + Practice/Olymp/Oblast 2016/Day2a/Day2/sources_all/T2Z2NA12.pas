{Karnauh Maksim,T2Z2NA12}
program T2Z2NA12;
var f1,f2:text;
m,n,c1,c2,min,min1,max,max1,c,i:longint;
b:array[1..3000] of longint;
begin
assign(f1,'input.txt');
reset(f1);
assign(f2,'output.txt');
rewrite(f2);

read(f1,m,n);
read(f1,c1,c2);
for i:=1 to n do read(f1,b[i]);

max:=0;
min:=1000000;

for i:=1 to n do
 begin
 if max<b[i] then
   begin
   max:=b[i];
   max1:=i;
   end;
  if min>b[i] then
   begin
   min:=b[i];
   min1:=i;
   end;
  end;

if c1<=c2 then
 begin
 if (c1+min<c2+max) and (min1>max1) and (c1+max<c2+min) then
   begin
   c:=max1;
   max1:=min1;
   min1:=c;
   end;
 if (c1+min<=c2+max) and (min1>max1) then min:=-1;
 end;

if c2<c1 then
 begin
  if (max+c1>c2+min) and (min1<max1) then
   begin
   c:=max1;
   max1:=min1;
   min1:=c;
   end;
  if (c1+min>=c2+max) and (min1<max1)  then min:=-1
 end;


if (min=max) and (c1=c2) then min:=-1;
if min=-1 then write(f2,'-1') else
begin

if min1=max1 then
 begin
 for i:=min1+1 to n do
  if b[i]=min then begin max1:=i; break; end;
 if c1>c2 then
  begin
  c:=min1;
  min1:=max1;
  max1:=c;
  end;
 end;
  write(f2,min1,' ',max1);
end;





close(f1);
close(f2);
end.