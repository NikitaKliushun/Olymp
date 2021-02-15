var n,k,q,w,zz,s,sum1,sum2,max:int64;
    a,p,c:array[1..100000] of longint;
    i,j:longint;
    v,f:text;


procedure prov;
var i,ii:longint;
begin
  q:=0;
for i:=1  to n do
begin
if c[i]=1 then q:=q+a[i];

if q=k then begin
            for ii:=1 to n do
            if c[ii]=1 then inc(w);
            write(v,1);
            writeln(v);
            write(v,'-',w);
            close(f);
            close(v);
            halt;
            end;
end;
end;

procedure perebor (x:longint);
var j:longint;
begin
if x>n then begin
            prov;
            exit;
            end;
for j:=0 to 1 do
begin
  c[x]:=j;
  perebor(x+1);
end;
end;


begin
assign(f,'input.txt');
reset(f);
assign(v,'output.txt');
rewrite(v);

read(f,n,k);
for i:=1 to n do
begin
  read(f,a[i]);
  sum1:=sum1+a[i];
  sum2:=sum2+p[i];
  read(f,p[i]);
end;

perebor(1);


for i:=1 to n do
if a[i]<>0 then inc(zz);

if zz=0 then  begin
              write(v,k);
              writeln(v);
              s:=k;
              j:=1;
              while s<>0 do
              begin
              if j=n+1 then j:=1;
              if p[j]<>0 then begin
                              writeln (v,j);
                              dec(p[j]);
                              inc(j);
                              dec(s);
                              end
                         else inc(j);
              end;
              end;
close(f);
close(v);
end.
