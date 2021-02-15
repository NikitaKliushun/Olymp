program t2z1na16;
var dm:array[1..100000] of longint;
    u,s,m,dw,t,b,q,e,k,i:longint;
procedure mesac(del,e,dw,b,t:longint; var u,s:longint);
var i:longint;
    a:array[1..100000] of longint;
begin
 for i:=1 to del do
  begin
  a[i]:=e;
  e:=e+1;
  if e>dw then e:=1;
  end;
  u:=0;
 if a[b]=t then u:=1;
 a[b]:=0;
 s:=e;
 end;



begin
assign(input,'input.txt');
assign(output,'output.txt');
reset(input);
rewrite(output);
readln(m,dw);
for i:=1 to m do read(dm[i]);
readln;
read(s,t,b);
q:=1;
e:=s;
while q<=m do
 begin
 mesac(dm[q],e,dw,b,t,u,s);
 q:=q+1;
 k:=k+u;
 e:=s;
 end;


write(k);

close(output);
close(input);
end.
