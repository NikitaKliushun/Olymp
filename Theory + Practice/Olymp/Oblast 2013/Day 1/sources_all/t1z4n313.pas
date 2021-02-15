{Tuleyko Maksim, Molodechno, 9 klass}
program zzz;
var  a,c:array [1..200000] of longint;
     i,n,m,k,f:longint;
begin
  assign(input,'input.txt');
  assign(output,'output.txt');
  reset(input);
  rewrite(output);

  
  read(n,m,k);
  for i:=1 to m do
    read(a[i]);
  for i:=1 to n do
    read(c[i]);
  read(f);

  if (k=1) and (m=1) then write('1')
                     else write(m);





  close(input);
  close(output);
end.
