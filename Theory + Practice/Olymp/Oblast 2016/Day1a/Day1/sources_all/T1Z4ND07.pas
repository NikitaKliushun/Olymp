program T1Z4ND07;
var n,k,i,j,s,z,t1,t2,num,x,e:integer;
a,a1,b,b1:array[1..2000] of integer;
f1,f2:text;

begin
assign(f1,'input.txt');
reset(f1);
assign(f2,'output.txt');
rewritef2);

read(f1,n,k);
writeln;
for i:=1 to k do 
 begin
  read(f1,a[i]);
  a1[i]:=a[i];
 end;
writeln;
for i:=1 to k do 
 begin
  read(f1,b[i]);
  b1[i]:=b[i];
 end;
 
for i:=1 to k do 
  if a[i]=b[i] then x:=1; 
for i:=1 to k do 
  for j:=1 to k do 
    if a[i]=b[j] then begin
                       e:=e+1;
                       num:=i;
                      end;
                      
if e=0 then x:=-1 else 
                    while a[num]<>b[num] do
                     begin
                      z:=b[1];
                      for i:=1 to k-1 do 
                        b[i]:=b[i+1];
                      b[k]:=z;
                      t1:=t1+1;
                     end; 
 
if e=0 then x:=-1 else 
                    while a1[num]<>b1[num] do
                     begin
                      z:=b1[k];
                      for i:=1 to k-1 do 
                        b1[k-i+1]:=b1[k-i];
                      b1[1]:=z;
                      t2:=t2+1;
                     end; 
                     
if x=1 then writeln(f2,0);
if x=-1 then writeln(f2,-1);
if x=0 then 
        if t1<t2 then writeln(f2,t1) else writeln(f2,t2);

close(f1);
close(f1);
end.