program zz;
 var a,b,c:array [1..40000] of longint;    {!}
     k,n,m,i,j,max,aaa:longint;
     f:text;

procedure sort(n,max:longint);
var b,c:array [1..40000] of longint;
    i,j,u:longint;
begin
for i:=1 to max do
 b[i]:=0;
for i:=1 to max do
  if a[i]<>0 then inc (b[a[i]]);
u:=1;
for i:=1 to max do
 if b[i]<>0
  then for j:=1 to b[i] do
        begin
         c[u]:=i;
         inc(u);
        end;
end;

procedure ololo(k:longint; var aaa:longint);
var aa,i:longint;
begin
aa:=0;
for i:=1 to n-k do
  if a[i+k] -a[i] > aa
    then begin
          aa:=a[i+k] -a[i];
          aaa:=i;
         end;
end;

procedure inp(var max,n,k:longint);
begin
assign(f,'input.txt');
reset(f);
read(f,n,k);
for i:=1 to n do
 begin
  read(f,a[i]);
  if a[i]> max
    then max:=a[i];
  end;
close (f);
end;

procedure outp(aaa,k,n:longint);
var j:longint;
begin
assign(f,'output.txt');
rewrite(f);
writeln(f,k);
for i:=aaa to k+aaa-1 do
 begin
  while a[j]<>c[i] do
   inc(j);
 write(f,j,' ');
 end;
close(f);
end;


begin
inp(max,n,k);
sort(n,max);
ololo(k,aaa);
outp(aaa,k,n);
end.
