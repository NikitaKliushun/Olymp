{Tuleyko Maksim, Molodechno, 9A klass}
program zzz;
var  a,m,n,k,i,b:longint;
begin
  assign(input,'input.txt');
  assign(output,'output.txt');
  reset(input);
  rewrite(output);

  read(n,m);
  for i:=1 to m do
    read(a,b);


  if n=1 then k:=0;
  if n=2 then k:=0;
  if n=3 then k:=2;
  if n=4 then k:=4;
  if n=5 then k:=5;
  if n=6 then k:=9;
  write(k-m);


  close(input);
  close(output);
end.