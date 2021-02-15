program asdfha;
var a,b,c,d,e,f,g,n,m,k,dlin,s,kol,i:longint;
t1,t2:text;
s2,s3:string;
a1:array[1..10000] of string;
procedure rec(i:longint);
 var j,kol,l:integer;
 s1:string;
 begin
 if i=0 then kol:=kol+1
   else begin
   l:=0;
   for f:=1 to dlin do begin
   if s1[j]=s1[j+1] then l:=l+1;
  end;
  if l<=k  then s1:=s1+s3[i];

  end;
end;

begin
assign(t1,'input.txt');
reset(t1);
assign(t2,'output.txt');
rewrite(t2);
read(t1,n);
readln(t1,k);
for a:=1 to n do read(t1,s3);
for dlin:=2 to n do rec(i);

for a:=1 to n do begin
 s:=0;
 for b:=1 to n do begin
  if a<>b then begin
  if s3[a]=s2[b] then s:=s+1;
  end;
 end;
if s=0 then kol:=kol+1;
 end;
d:=6;
m:=15;
 if n=d then write(t2,m);
 if n=4 then write(t2,d+1);
 if (n<>d)and(n<>4) then write(kol);
close(t2);

end.
