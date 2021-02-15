//Чуров Алексей Валерьевич, г.Солигорск, 10, 4
program T1Z4NB16;
var f1,f2:text;
a:array [1..2000,1..2000] of integer;
b,c,s,r,v:array [1..2000] of integer;
p:real;
i,j,n,k,ii,jj,x,y,m,d:integer;
begin
assign(f1,'input.txt');
reset(f1);
readln(f1,n,k);
for i:=1 to n do begin
for j:=1 to k do read(f1,a[i,j]);
end;
close(f1);
for i:=1 to n do
for j:=1 to k do begin
if b[a[i,j]]=0 then
for ii:=1 to n do begin
if ii<>i then begin
jj:=1;
while jj<=k do begin
if a[ii,jj]=a[i,j] then begin 
b[a[i,j]]:=b[a[i,j]]+1;
jj:=k+1;
end;
jj:=jj+1;
end;
end;
end;
if b[a[i,j]]=0 then b[a[i,j]]:=-1
else if b[a[i,j]]>=n-1 then begin
y:=y+1;
c[y]:=a[i,j];
end;
end;
if y=0 then m:=-1
else begin
for x:=1 to y do begin
for i:=1 to n do
for j:=1 to k do
if a[i,j]=c[x] then r[i]:=j;
for i:=1 to n do p:=p+r[i];
v[i]:=trunc(p/n);
d:=-1;
for i:=1 to n do
if (d=-1) or (abs(v[i]-r[i])<m) then begin
jj:=r[i];
m:=abs(v[i]-r[i]);
end;
for i:=1 to n do s[i]:=s[i]+abs(r[i]-jj);
m:=s[1];
for i:=1 to n do
if s[i]<m then m:=s[i];
end;
end;
assign(f2,'output.txt');
rewrite(f2);
writeln(f2,m);
close(f2);
end.