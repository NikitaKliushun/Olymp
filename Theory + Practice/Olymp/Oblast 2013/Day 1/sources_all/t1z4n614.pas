  var n,i,k,m,f,kol:longint;
      c,a:array [1..200000] of longint;

begin
  assign(input,'input.txt');
  reset(input);
  assign(output,'output.txt');
  reset(output);

  read(n,m,k);
  for i:=1 to m do
    read(a[i]);
  for i:=1 to n do
    read(c[i]);
  read(f);

  for i:=1 to m do
    if (c[a[1]]=f) and (k=1) then
      inc(kol);
  write(kol);

  close(input);
  close(output);
end.