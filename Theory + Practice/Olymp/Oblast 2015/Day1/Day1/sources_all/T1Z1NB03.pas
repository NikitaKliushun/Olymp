program z1;
var
a: array[0..100000] of longint;
m:array[1..100000] of longint;
s,i,n,j,r,k,q: longint;
begin
assign(input,'input.txt');
assign(output,'output.txt');
reset(input);
rewrite(output);
readln(n,k);
fillchar(a,sizeof(a),0);
fillchar(m,sizeof(m),0);
q:=0;
r:=0;
i:=0;
j:=0;
for i:=1 to n do
begin
read(s);
inc(a[s]);
end;
//for i:=1 to n do write(a[i],' ');
for i:=1 to n do if a[i]<>0 then inc(m[i]);
//write(q);
for i:=1 to n do if k<=a[i] then r:=r+(a[i] div k)
                            else m[i]:=0;
writeln(r);
for i:=1 to n do if m[i]=1 then begin for j:=1 to (a[i] div k) do write(i,' '); end;
close(input);
close(output);
end.
