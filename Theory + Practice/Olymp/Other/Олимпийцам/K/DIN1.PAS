{maximalnaya podposledovatelnost}
program Din1;
var a,l,pr,p:array[1..1000] of longint;
    n,i,j,nmax:longint;
begin
  Read(n);
  Randomize;
  for i:=1 to n do
    a[i]:=Random(n);
  for i:=1 to n do
    Write(a[i]:3);
  Writeln;
  FillChar(l,SizeOf(l),0);
  FillChar(pr,SizeOf(pr),0);
  FillChar(p,SizeOf(p),0);
  for i:=1 to n do
    begin
      l[i]:=1;
      for j:=1 to i-1 do
        if (a[j]<a[i]) and (l[j]+1>l[i])
           then begin
                  l[i]:=l[j]+1;
                  pr[i]:=j;
                end;
    end;
  nmax:=1;
  for i:=2 to n do
    if l[i]>l[nmax]
       then nmax:=i;
  Writeln(l[nmax]);
  while nmax>0 do
    begin
      p[nmax]:=1;
      nmax:=pr[nmax];
    end;
  for i:=1 to n do
    if p[i]=1
       then Write(a[i]:3);
  Writeln;
end.