program zoasd;
var a,b,c,d,e,f,g,h,n,k,p,l,j,z:longint;
a1:array[1..500]of longint;
a2:array[1..2,1..100]of integer;
t1,t2:text;
BEGIN
assign(t1,'input.txt');
reset(t1);
assign(t2,'output.txt');
rewrite(t2);
read(t1,n);
readln(t1,k);

for a:=1 to n do read(t1,a1[a]);{ZTENIE}

for a:=1 to n do begin
if a1[a]>=k then  begin
end;
end;

  for a:=1 to n do begin
    for b:=1 to n do begin
  p:=8;
 if  a<>b then begin
   if a1[a]+a1[b]>=k then begin
   z:=z+1;
    a2[1,z]:=a;
 a2[2,z]:=b;
   p:=p+1;
   end;
 end;
 j:=6;
 end;
j:=j+1;
p:=p-1;


end;

 for d:=1 to n do begin
  for e:=1 to n do begin
 p:=8;
 if  a<>b then begin
 if a1[a]+a1[b]>=k then begin
 z:=z+1;
  a2[1,z]:=a;
  a2[2,z]:=b;
  p:=p+1;
  end;
 end;
j:=6;
end;
j:=j-1;
p:=p+1;
end;

if k=j then write(t2,j);

if k=n-1 then write(t2,p-1)


 Else write(t2,a1[n-4]);
 close(t2);


END.
