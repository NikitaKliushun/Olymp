{DROZD ANDREY SERGEEVICH}
program T2Z2N03;
var s:ansistring;
    n,k,i,l,j:int64;
    a:char;
    m:array[1..1000000] of char;
    c:array[1..256] of integer;
begin
fillChar(a,sizeof(a),0);
assign(input,'input.txt');
reset(input);
readln(n,k);
i:=0;
while i<>n do
begin
i:=i+1;
read(a);
m[i]:=a;
end;
i:=0;
while j<>n do
begin
j:=j+1;
while i<>n do
begin
i:=i+1;
c[ord(m[i])]:=c[ord(m[i])]+1;
if c[ord(m[i])]>k then break;
l:=l+1;
end;
fillChar(c,sizeof(c),0);
i:=j;
end;
close(input);
assign(output,'output.txt');
rewrite(output);
write(l);
close(output);
end.
