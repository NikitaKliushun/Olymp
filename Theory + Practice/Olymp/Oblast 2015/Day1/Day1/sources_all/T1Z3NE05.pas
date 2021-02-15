//Чуров Алексей Валерьевич, г.Солигорск,9г, 3
program T1Z3NE05;
var f1,f2:text;
k,t,e,aaa:array [1..100000] of integer;
cc,mm,i,n,j,m,a,aa,b,c,nn:integer;
begin
assign(f1,'input.txt');
reset(f1);
assign(f2,'output.txt');
rewrite(f2);
readln(f1,n,m);
for i:=1 to n do read(f1,k[i]);
for i:=1 to m do read(f1,t[i]);
aa:=1;
for i:=1 to n do begin
for j:=1 to k[i] do a:=a*10+aa;
if aa=0 then aa:=1;
if aa=1 then aa:=0;
end;
aa:=1;
for i:=1 to n do begin
for j:=1 to t[i] do b:=b*10+aa;
if aa=0 then aa:=1;
if aa=1 then aa:=0;
end;
c:=a xor b;
mm:=0;
while c<>0 do begin
mm:=mm+1;
aaa[mm]:=c mod 10;
c:=c div 10;
end;
nn:=1;
for i:=mm downto 1 do begin
e[nn]:=e[nn]+1;
if aaa[i]<>aaa[i+1] then nn:=nn+1;
end;
for i:=1 to mm do e[i]:=e[i]+1;
for i:=1 to nn do write(e[i],' ');
close(f1);
close(f2);
end.