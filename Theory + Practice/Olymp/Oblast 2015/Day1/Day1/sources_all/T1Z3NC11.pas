//Ефимович Максим Геннадьевич, город Солигорск, 11 класс, №3
var n,m,i,k1p,k2p,j,k,c:longint;
    k1,k2:longint;
    a,b,ans:array[1..100000] of longint;
    f1,f2:text;
function max(x,y:longint):longint;
 begin
 if x>y then max:=x
        else max:=y;
 end;
function min(x,y:longint):longint;
 begin
 if x>y then min:=y
        else min:=x;
 end;
begin
assign(f1,'input.txt'); reset(f1);
assign(f2,'output.txt'); rewrite(f2);
readln(f1,n,m);
k1p:=0; k2p:=0;
for i:=1 to n do
  begin
  read(f1,k1);
  if i mod 2=0 then for j:=k1p+1 to k1p+k1  do a[j]:=1
               else for j:=k1p+1 to k1p+k1 do a[j]:=2;
  k1p:=k1p+k1;
  end;
readln(f1);
for i:=1 to m do
  begin
  read(f1,k2);
  if i mod 2=0 then for j:=k2p+1 to k2p+k2 do b[j]:=1
               else for j:=k2p+1 to k2p+k2 do b[j]:=2;
  k2p:=k2p+k2;
  end;
i:=k1p;
j:=k2p;
k:=max(i,j);
while (i<>0) and (j<>0) do
 begin
 ans[k]:=(a[i]-1) xor (b[j]-1);
 dec(k);
 dec(i);
 dec(j);
 end;
if (i>0) and (j=0) then for k:=1 to i do ans[k]:=a[k]-1;
if (i=0) and (j>0) then for k:=1 to j do ans[k]:=b[k]-1;
for i:=1 to max(k1p,k2p) do
 if ans[i]=1 then begin k:=i; break; end;
c:=1;
i:=k;
while k<=max(k1p,k2p) do
 begin
 i:=k;
 while (ans[k]=c) and (k<=max(k1p,k2p)) do inc(k);
 write(f2,k-i,' ');
 c:=c xor 1;
 end;
close(f1);
close(f2);
end.
