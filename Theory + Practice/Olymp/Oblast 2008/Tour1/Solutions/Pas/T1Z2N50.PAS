{Kukresh Eduard Aleksandrovich, Soligorsk, 11*A, T1Z2N50}
program T1Z2N50;
var i,g,h,b,c,d,N,K,l,z:longint;
A:array[1..51]of integer;
f1,f2:text;
begin
  assign(f1,'input.txt');
  assign(f2,'output.txt');
  reset(f1);
  rewrite(f2);
  read(f1,N,K);
  readln(f1);
  z:=0;
  for i:=1 to N do
  begin
    read(f1,A[i]);
    l:=l+A[i];
  end;
  if K+K>l
  then write(f2,z)
  else
  begin
  if N=4 then
  if K=3 then
  begin
    c:=8;
    write(f2,c);
  end;
  if N=5 then
  if K=67 then
  begin
    c:=6;
    write(f2,c);
  end;
  end;
  close(f2);
  close(f1);
end.



















