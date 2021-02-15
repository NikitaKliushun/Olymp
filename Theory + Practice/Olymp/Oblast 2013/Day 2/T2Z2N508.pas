var d:array [1..100000] of longint;
    f:array [1..100000] of longint;
a,b,c,i,n,k:longint;
begin
  assign(input,'input.txt');
  reset(input);
  assign(output,'output.txt');
  rewrite(output);
  readln(n,k);
  for i:=1 to n do   begin
  read(d[i]);  write(' ');    end;
  for a:=1 to n do
    for  b:=1 to n do
      if b<a then f[a]:=b ;
   for c:=1 to n do
   write(f[c],' ' );
  close(input);
  close(output);
end.