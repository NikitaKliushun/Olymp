var
gg,c,a:array[1..200000]of longint;
z,i,f,n,m,k:longint;
s:text;
procedure Check;
var
w,q,i:integer;
begin
  for i:=1 to m do begin
    q:=1;
    w:=a[i];
    while gg[w]<=k do
      if w<>f then begin
        w:=c[w];
        inc(gg[w]);
      end
      else begin
        inc(z);
        q:=gg[w];
        gg[w]:=k+1;
      end;
    gg[w]:=q;
  end;
end;
begin
z:=0;
assign(s,'input.txt');
reset(s);
readln(s,n,m,k);
  for i:=1 to m do
    read(s,a[i]);
  for i:=1 to n do
    read(s,c[i]);
readln(s,f);
close(s);
Check;
writeln(z);
assign(s,'output.txt');
rewrite(s);
writeln(s,z);
close(s);
end.
