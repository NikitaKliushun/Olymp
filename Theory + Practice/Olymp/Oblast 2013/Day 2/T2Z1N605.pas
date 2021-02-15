var w,r,h,n,m,k,i,j,d:integer;
a:array[1..100]of integer;
x:array[1..10]of integer;
p:array[1..100]of integer;
f1,f2:text;
begin
assign(f1,'input.txt'); reset(f1);
assign(f2,'output.txt'); rewrite(f2);
read(f1,n,k);
for i:=1 to n do
read(f1,a[i],p[i]);
         if n=1 then
         begin
         m:=p[1]-a[1];
         writeln(f2,m);
         for j:=1 to m do
         writeln(f2,1);
         end;
                        if n>1 then
                        begin
                        for i:=1 to n do
                        begin
                          m:=p[i]-a[i];
                          r:=r+m;
                          for j:=1 to m do
                          while (a[i]<p[i]) and (k>0) do
                          begin
                          a[i]:=a[i]+1;
                          k:=k-1;
                          end;
                          x[j]:=i;
                        end;
                       writeln(f2,R);
                       for h:=1 to m do
                       writeln(f2,x[h]);
                       end;
close(f1);
close(f2);
end.
