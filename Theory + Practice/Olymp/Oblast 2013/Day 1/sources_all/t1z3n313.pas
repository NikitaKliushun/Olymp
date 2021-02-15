{Tuleyko Maksim, Molodechno, 9 klass}
program zzz;
  var a:array [1..400,1..400] of byte;
      n,m,k,i,j:longint;
begin
  assign(input,'input.txt');
  assign(output,'output.txt');
  reset(input);
  rewrite(output);

  read(n,m);
  for i:=1 to n do
    for j:=1 to m do
      read(a[i,j]);
  if m>n then k:=2*(m*m-n*n)
         else if n>m then k:=2*(n*n-m*m)
                     else k:=m*m+n*n;
  write(k);





  close(input);
  close(output);
end.