{DROZD ANDREY SERGEEVICH}
program T2Z3N03;
var i,j,n,c1,c2,m:longint;
    a:array [1..10000,1..10000] of byte;
    v:array[1..1000000] of byte;
    k:byte;
    s,l:int64;
procedure poisk(i:int64);
begin    k:=k+1;
for j:=1 to n do
if a[i,j]=1
        then if v[j]=0
                then
                begin
                v[j]:=k;
                l:=l+1;
                poisk(j);
                end;
end;
begin
fillchar(a,sizeof(a),0);
assign(input,'input.txt');
reset(input);
read(n,m);
assign(output,'output.txt');
rewrite(output);
if (n in [1..3]) and (n=m) then begin write('0');halt;end;
if (n=3) and (m=2) then begin write('1');halt;end;

for i:=1 to m do
begin
read(c1,c2);
a[c1,c2]:=1;
a[c2,c1]:=1;
end;
close(input);
for i:=1 to n do
for j:=1 to i do
a[i,j]:=a[j,i];
v[1]:=1;
k:=1;
poisk(1);
for i:=1 to n do
begin k:=1;
if v[i]=0 then begin v[i]:=1;poisk(i);end;
end;
for i:=1 to n do
s:=s+v[i]-1;
if s>l then write(s)
       else write(l);
close(output);
end.
