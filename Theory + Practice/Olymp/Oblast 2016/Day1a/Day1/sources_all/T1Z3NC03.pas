var n,sc,sc1,sc2,i:integer;f1,f2:text;a:array[1..100000]of byte;
begin
assign(f1,'input.txt');reset(f1);assign(f2,'output.txt');rewrite(f2);
readln(f1,n);
read(f1,a[1]);
for i:=2 to n do
begin
read(f1,a[i]);
if a[i]=2
then sc2:=sc2+1
else if a[i]=1
      then sc1:=sc1+1;
if a[i]<a[i-1] then sc:=1;      
end;
if (sc1>sc2)and(sc=1)
then writeln(f2,n-sc2)
else if(sc1<=sc2)and(sc=1)then writeln(f2,n-sc1)
else if sc=0 then writeln (f2,n);
close(f1);close(f2);
end.