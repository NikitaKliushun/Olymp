{Kryshkovskaya Elizaveta Aleksandrovna, Vileyka, 9', zadacha 2}
{$N+}
Program T2Z2N39;
var v,f,m,i,n,s,j,k:longint;
a:array[1..100] of char;
Begin
  assign(input,'input.txt');
  reset(input);
  assign(output,'output.txt');
  rewrite(output);
  read(n,k);
  for i:=1 to n do
    read(a[i]);
  if n=1 then
  v:=1 else
  begin
  end;
  write(v);
  close(input);
  close(output);
End.