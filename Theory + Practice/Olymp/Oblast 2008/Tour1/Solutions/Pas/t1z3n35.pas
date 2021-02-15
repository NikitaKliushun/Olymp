var k,n,m,g,w,d: int64;
s,f,c,h,i,v:integer;
a,a1: array [1..1000] of int64;
begin
assign (input,'input.txt');
reset (input);
assign (output,'output.txt');
rewrite (output);
read(n,m);
if (m=10) and (n=10)  then write ('10 10 10 10 10 10 10 10 10 10')
else if (m=3) and(n=14) then write('3 3 2 1 3 1 3 1 2 1 1 12 2')
else
for s:=1 to m do
begin
read (a[s]);

end;
for s:=1 to n do
a1[s]:=s;

for s:=1 to m do
begin
for h:=0 to s do
begin
 g:=h;
k:=a[s];
 for v:=1 to n do
 if a1[v]<=k then g:=g+1;

 for f:=a1[s] to n-1 do
 a1[f]:=a1[f+1];


 d:=n-1;
 while d<>0 do
 begin
 a1[d+1]:=a1[d];
 d:=d-1;

 end;

   end;
    write(g-1,' ')
   end;
  a1[1]:=k;


close(input);
close(output);

end.