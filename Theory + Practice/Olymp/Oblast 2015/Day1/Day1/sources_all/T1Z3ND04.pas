//Ћукша ƒмитрий ёрьевич, ѕуховический район, 9 класс, 1
var n,m,a,b,k,i,j,x,nX:integer;
s:string;
f1,f2:text;
begin
assign(f1,'input.txt');
reset(f1);
assign(f2,'output.txt');
rewrite(f2);

read(f1,n,m);
a:=0;
b:=0;

for i:=1 to  n do
begin
read(f1,k);
if i mod 2 = 0 then for j:=1 to k do a:=a*10;
if i mod 2 = 1 then for j:=1 to k do a:=a*10+1;
end;

for i:=1 to  m do
begin
read(f1,k);
if i mod 2 = 0 then for j:=1 to k do b:=b*10;
if i mod 2 = 1 then for j:=1 to k do b:=b*10+1;
end;

x:=a xor b;

s:=IntToStr(x);
nX:=length(s);
k:=0;

for i:=1 to nX do
begin

if (s[i]='1') and (s[i+1]='1') then k:=k+1;

if (s[i]='1') and (s[i+1]='0') or (s[i]='1') and (nX=i+1) then
begin
write(f2,k+1,' ');
k:=0;
end;

if (s[i]='0') and (s[i+1]='0') then k:=k+1;
if (s[i]='0') and (s[i+1]='1') or (s[i]='0') and (nX=i+1) then
begin
write(f2,k+1,' ');
k:=0;
end;

end;

close(f1);
close(f2);
end.