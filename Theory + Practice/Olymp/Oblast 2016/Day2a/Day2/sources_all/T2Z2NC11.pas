{Северин Клим Михайлович,г.Вилейка,8класс,№2}
program ghi;
var min,max,sr,i,m,n,p:longint;
b,h,k:array [1..3000] of longint;
f1,f2:text;
begin
assign(f1,'input.txt');
assign(f2,'output.txt');
reset(f1);
rewrite(f2);
read(f1,m);
read(f1,n);
for i:=1 to m-1 do
        read(f1,h[i]);
readln(f1,h[m]);
for i:=1 to n do
        read(f1,b[i]);
        min:=b[1];
        k[1]:=1;
for i:=2 to n do
        if b[i]<min then begin min:=b[i]; k[1]:=i; end;
        max:=b[k[1]];
for i:=k[1] to n do
        if b[i]>=max then begin max:=b[i]; k[2]:=i; end;
if m=3 then
for i:=k[1]+1 to k[2]-1 do
        if p<>1 then begin
        if (b[i]<=max) and (b[i]>=min) then begin sr:=b[i]; k[3]:=i; end;
        if (h[1]+min< h[2]+sr) and (h[2]+sr<h[3]+max) then p:=1;
        end;
if m=2 then if (h[1]+min< h[2]+max) then p:=1;
if p=0 then write(f2,'-1') else
        if m=2 then write(f2,k[1],' ',k[2]);
        if m=3 then write(f2,k[1],' ',k[3],' ',k[2]);
        close(f1);
        close(f2);

end.

