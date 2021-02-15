program z3;
var n,i,j,k,z,max,x:integer;
a,l:array[1..100] of integer;
f1,f2:text;
begi
assign(f1,'input,txt');
reset(f1);
assign(f2,'output.txt');
rewrite(f2);

read(f1,n);
writeln;
for i:=1 to n do 
  read(f2,a[i]);
  
for i:=1 to n do  
  if a[i]=a[i+1] then x:=-1;
 
if x=-1 then writeln(n) else 
                       for i:=1 to n do
                         for j:=2 to n do 
                           if a[i]=a[j] then 
                             for z:=i to j do
                               for k:=z+1 to j do 
                                 if a[z]<>a[k] then max:=n ;
 
 
  
 writeln(f2,max);
 close(f1);
 close(f2);
 end.
 