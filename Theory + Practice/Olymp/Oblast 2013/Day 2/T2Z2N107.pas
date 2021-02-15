program T2Z3N107;
var n,k,c,z,j,i,s:integer;
    a,p,p1:array[1..100]of integer;

begin
assign(input,'in.txt');
assign(output,'out.txt');
reset(input);
rewrite(output);
readln(n,k);
for i:=1 to n do begin
        read(a[i]);
        end;
j:=0;
z:=0;
c:=0;
s:=a[1];
if k mod 2<>0 then k:=k+1;
for i:=1 to n-1 do begin
        for j:=i+1 to n do
                if s>a[j] then begin s:=a[j];c:=j;end;
        z:=a[i];
        a[i]:=a[c];
        a[c]:=z;
        end;
for i:=1 to n-1 do begin
        p[i]:=a[i+1]-a[i];
        end;
for i:=1 to n do begin
        for j:=i+1 to n do
                if p[i]<p[j] then c:=i;
        z:=p[i];
        p[i]:=p[c];
        p[c]:=z;
        end;
close(input);
close(output);
end.
