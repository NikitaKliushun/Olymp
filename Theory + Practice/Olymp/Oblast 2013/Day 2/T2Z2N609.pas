var
d,a,b:array[1..100000]of longint;
sum,n,k,i:longint;
s:text;
procedure zorro(ll:longint);
var
tt,j,y:longint;
begin
y:=1;
  for tt:=ll downto ll-k+1 do begin
    d[y]:=b[tt];
    inc(y);
  end;
end;
procedure korra(l:longint);
var
sumr,t:longint;
begin
sumr:=0;
  for t:=l-1  downto l-k+1 do
    sumr:=sumr+(a[l]-a[t]);
  if sumr<sum then begin
    sum:=sumr;
    zorro(l);
  end;
end;
procedure qsort(L,R:longint);
var
y,q,i,j:longint;
begin
i:=L;j:=R;
q:=a[((L+R) div 2)];
  while i<j do begin
    while a[i]<q do inc(i);
    while a[j]>q do dec(j);
    y:=a[i];
    a[i]:=a[j];
    a[j]:=y;
    y:=b[i];
    b[i]:=b[j];
    b[j]:=y;
    inc(i);
    dec(j);
  end;
  if i<R then qsort(i,R);
  if j>L then qsort(L,j);
end;
begin
assign(s,'input.txt');
reset(s); sum:=999999999;
readln(s,n,k);
  for i:=1 to n do begin
    read(s,a[i]);
    b[i]:=i;
  end;
qsort(1,n);
  for i:=n downto 0+k do
    korra(i);
assign(s,'output.txt');
rewrite(s);
writeln(s,k);
  for i:=1 to k do
    write(s,d[i],' ');
close(s);
end.
