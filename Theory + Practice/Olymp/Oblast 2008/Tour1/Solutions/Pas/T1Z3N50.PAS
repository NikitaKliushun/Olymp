{Kukresh Eduard Aleksandrovich, Soligorsk, 11*A, T1Z3N50}
program T1Z3N50;
var i,g,h,c,d,N,K,l,M:longint;
A:array[1..200]of integer;
b:array[1..200]of integer;
f1,f2:text;
begin
  assign(f1,'input.txt');
  assign(f2,'output.txt');
  reset(f1);
  rewrite(f2);
  read(f1,N,M);
  for i:=1 to N do
  A[i]:=i;
  readln(f1);
  for g:=1 to M do
  begin
    read(f1,b[g]);
    for i:=1 to N do
    if A[i]=b[g]
    then
    begin
      l:=A[i];
      for h:=i downto 2 do
      A[h]:=A[h-1];
      A[1]:=l;
      write(f2,i,' ');
    end;
  end;
  close(f2);
  close(f1);
end.