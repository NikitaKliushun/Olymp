// Merkulov Anton Minskiy raion, 11 class, 3 zadacha
Program T1Z1NC05;
var n,m,i,l,max,o,t1,min:longint;
a,b,x,x1:string;
tc:char;
K,T:array[1..100000] of longint;
f1,f2:text;
begin
n:=0;
m:=0;
i:=0;
l:=0;
t1:=0;
o:=0;

Assign(f1,'input.txt');
Reset(f1);
Assign(f2,'output.txt');
Rewrite(f2);

Readln(f1,n,m);

For i:=1 to n do
 Read(f1,k[i]);

readln(f1);

for i:=1 to m do
 Read(f1,t[i]);

for i:=1 to n do
 if i mod 2 = 0 then
  for l:=1 to k[i] do
   a:=a+'0'
 else
  for l:=1 to k[i] do
   a:=a+'1';

for i:=1 to m do
 if i mod 2 = 0 then
  for l:=1 to t[i] do
   b:=b+'0'
 else
  for l:=1 to t[i] do
   b:=b+'1';

for i:=1 to n do
 k[i]:=0;

for i:=1 to m do
 t[i]:=0;

if length(a)>length(b) then
 begin
  max:=length(a);
  min:=length(b);
 end
else
 begin
  max:=length(b);
  min:=length(a);
 end;

if length(a)=min then
begin
for i:=1 to min do
 x1[i]:=a[min-i+1];

for i:=min+1 to max do
 x1[i]:='0';

for i:=1 to max do
 a[max-i+1]:=x1[i];
end
else  if length(b)=min then
begin
for i:=1 to min do
 x1[i]:=b[min-i+1];

for i:=min+1 to max do
 x1[i]:='0';

for i:=1 to max do
 b[max-i+1]:=x1[i];
end;
for i:=max downto 1 do
 begin
  if (a[i]=b[i]) and (a[i]='1') then
   x[i]:='0'
  else
  if a[i]<>b[i] then
   x[i]:='1'
  else if (a[i]=b[i]) and (a[i]='0') then
   x[i]:='0';
 end;


tc:='1';
t1:=1;

i:=1;
o:=o+1;

While x[i]<>'1' do
 begin
  o:=o+1;
  i:=i+1;
 end;



for i:=o to max do
 if x[i]=tc then
  t[t1]:=t[t1]+1
 else
  begin
   t1:=t1+1;
   t[t1]:=1;
   tc:=x[i];
  end;


For i:=1 to max do
 if t[i]<>0 then
  Write(f2,t[i],' ');


Close(f1);
Close(f2);
end.
