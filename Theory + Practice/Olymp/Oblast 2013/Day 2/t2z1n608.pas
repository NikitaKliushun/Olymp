program t2z1n608;
var n,i,k,s,v:integer;f1,f2:text;
    a:array[1..10000] of integer;
    p:array[1..10000] of integer;
    c:array[1..10000] of integer;
 begin
assign(f1,'input.txt');
reset(f1);
ASSIGN(F2,'output.txt');
rewrite(f2);
read(f1,n,k);
for i:=1 to n do begin
read(f1,a[i],p[i]);
s:=s+a[i];
v:=v+p[i];
c[i]:=p[i]-a[i];
end;
if s=k then write(0);
IF K>S THEN begin begin writeln(f2,k-s);end;
while k-s>0 do begin
for i:=1 to n do
if c[i]>0 then begin writeln(f2,i); c[i]:=c[i]-1;s:=s+1;  end;end;end;
if k<s then begin begin writeln(f2,s-k);end;
for i:=1 to n do
while s-k>0 do begin
if a[i]>0 then begin writeln(f2,'-',i); a[i]:=a[i]-1;k:=k+1;  end;end;end;
close(f1);
close(f2);
end.