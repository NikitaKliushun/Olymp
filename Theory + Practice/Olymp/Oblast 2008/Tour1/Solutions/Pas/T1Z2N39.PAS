{Kryshkovskaya Elizaveta Aleksandrovna, Vileyka, 9', zadacha 1}
Program T1Z2N39;
var k,n,m,i,j:longint;
a,b,c:array[1..100] of longint;
Begin
  assign(input,'input.txt');
  reset(input);
  assign(output,'output.txt');
  rewrite(output);
  read(n,k);
  for i:=1 to n do
    read(a[i]);
  m:=0;
  for i:=1 to n do
    if a[i]>=k then
      m:=m+1;
  for i:=1 to n do
    for j:=i to n do
      if (a[i]+a[j])>=k then
        m:=m+1;
  write(m);
  close(input);
  close(output);
End.