Program T1Z1NB04;
var s,t,k,l:string;
i,j,n,m,d,b:integer;
f1,f2:text;
begin
Assign(f1,'input.txt');
Reset(f1);
Assign(f2,'output.txt');
Rewrite(f2);
readln(f1,s);
readln(f1,t);
n:=length(s);
m:=length(t);
if n<=m then begin
                 d:=n;
                 k:=s;
                 l:=t;
            end
       else begin
                 d:=m;
                 k:=t;
                 l:=s;
                 m:=n;
            end;
j:=0;
b:=0;
if s=t then begin
                 write(f2,n);
                 Close(f1);
                 Close(f2);
                 halt;
            end;
while (b<>1) and (d>=1) do
begin
  if k[d]=l[m] then j:=j+1;
  if k[d]<>l[m] then b:=1;
  d:=d-1;
  m:=m-1;
end;
write(f2,j);
Close(f1);
Close(f2);
end.