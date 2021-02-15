program T2Z2ND07;
var m,n,k,i,j,s,p:integer;
h,l,a:array[1..3000] of longint;
f1,f2:text;
begin
assign(f1,'input.txt');
reset(f1);
assign(f2,'output.txt');
rewrite(f2);

read(f1,m,n);
writeln;
for i:=1 to m do
  read(f1,h[i]);
writeln;
for i:=1 to n do
  read(f1,l[i]);

for i:=1 to m-j do
  for j:=i+1 to m do
   if h[i]>h[j] then
                 begin
                  k:=h[i];
                  h[i]:=h[j];
                  h[j]:=k;
                 end;
i:=1;
j:=1;
for i:=1 to n-j do
  for j:=i+1 to n do
   if l[i]>l[j] then
                 begin
                  s:=l[i];
                  l[i]:=l[j];
                  l[j]:=s;
                 end;

if n>m then
         for i:=1 to m do
           a[i]:=h[i]+l[i]
       else
         for i:=1 to n do
           a[i]:=h[i]+l[i];
          
if n>=m then
         for i:=1 to n do
           for j:=i+1 to n do
            begin
             if a[i]=a[j] then p:=p+1;
            end
        else
         for i:=1 to m do
           for j:=i+1 to m do
             if a[i]=a[j] then p:=p+1;



if p<>0 then write(f2,'-1');
close(f1);
close(f2);
end.
                 
                 



