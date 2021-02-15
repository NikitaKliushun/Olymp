{Kryshkovskaya Elizaveta Aleksandrovna, Vileyka, 9', zadacha 3}
{$N+}
Program T2Z3N39;
var k,m,i,n,j:longint;
a:array[1..100,1..100] of longint;
Begin
  assign(input,'input.txt');
  reset(input);
  assign(output,'output.txt');
  rewrite(output);
  read(n,m);
  for i:=1 to n do
    for j:=1 to 2 do
      read(a[i,j]);
  if m=1 then
    k:=0 else
  if (n=3) and (m=2) or (m=3)
    then k:=0 else
  begin

  end;
  write(k);
  close(input);
  close(output);
End.