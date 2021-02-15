//Чуров Алексей Валерьевич, г.Солигорск, 10, 1
program T1Z1NB16;
var f1,f2:text;
a,z:array [1..10,1..10] of integer;
b:array [1..100,1..3] of integer;
e:array [1..10] of integer;
p:array [1..4] of string;
s:string;
c:char;
w,i,n,j,m,k,x,y:integer;
begin
p[1]:='MISS';
p[2]:='HIT';
p[3]:='DEAD';
p[4]:='GAME OVER';
assign(f1,'input.txt');
reset(f1);
for i:=1 to 10 do begin
readln(f1,s);
for j:=1 to 10 do
if s[j]='#' then a[i,j]:=1;
end;
readln(f1,n);
for i:=1 to n do begin
readln(f1,s);
for j:=1 to length(s) do begin
if j=1 then k:=ord(s[j])-48
else if s[j-1]=' ' then c:=s[j]
else if s[j]<>' ' then k:=k*10+ord(s[j])-48;
end;
if c='k' then j:=10
else j:=ord(c)-96;
b[i,1]:=k;
b[i,2]:=j;
end;
close(f1);
k:=0;
for i:=1 to 10 do
for j:=1 to 10 do
if a[i,j]=1 then begin
k:=k+1;
e[k]:=1;
z[i,j]:=k;
a[i,j]:=2;
x:=i+1;
w:=0;
while (w=0) and (x<=10) do begin
if a[x,j]=1 then begin
a[x,j]:=2;
z[x,j]:=k;
e[k]:=e[k]+1;
x:=x+1;
end
else w:=1;
end;
w:=0;
x:=j+1;
while (w=0) and (x<=10) do begin
if a[i,x]=1 then begin
a[i,x]:=2;
z[i,x]:=k;
e[k]:=e[k]+1;
x:=x+1;
end
else w:=1;
end;
end;
i:=0;
j:=0;
while (w<>4) and (i<>n) do begin
i:=i+1;
x:=b[i,1];
y:=b[i,2];
if a[x,y]=0 then w:=1
else begin
a[x,y]:=0;
m:=z[x,y];
e[m]:=e[m]-1;
if e[m]=0 then begin
k:=k-1;
if k>0 then w:=3
else if k=0 then w:=4;
end
else w:=2;
end;
b[i,3]:=w;
end;
assign(f2,'output.txt');
rewrite(f2);
for j:=1 to i do writeln(f2,p[b[j,3]]);
close(f2);
end.