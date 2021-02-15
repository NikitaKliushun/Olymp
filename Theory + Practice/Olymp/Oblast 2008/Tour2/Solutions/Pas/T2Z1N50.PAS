{Kukresh Eduard Aleksandrovich, Soligorsk, 11*A, T2Z1N50}
{$N+}
program T2Z1N50;
var i,N,b,c,d,c1,c2:longint;
A:array[1..255]of integer;
f1,f2:text;
begin
  assign(f1,'input.txt');
  assign(f2,'output.txt');
  reset(f1);
  read(f1,N);
  readln(f1);
  rewrite(f2);
  for i:=1 to N do
  read(f1,A[i]);
  i:=1;
  while i<N do
  if A[i]>A[i+1]
  then
  begin
    b:=A[i];
    A[i]:=A[i+1];
    A[i+1]:=b;
    i:=1;
  end
  else i:=i+1;
  if N mod 2=1
  then write(f2,c{0})
  else
  begin
    d:=N div 2;
    for i:=1 to d do
    c1:=c1+A[i];
    for d:=i+1 to N do
    c2:=c2+A[d];
    c:=c2-c1;
    write(f2,c);
  end;
  close(f2);
  close(f1);
end.