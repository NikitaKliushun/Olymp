{Kryshkovskaya Elizaveta Aleksandrovna, Vileyka, 9', zadacha 1}
{$N+}
Program T2Z1N39;
var f,m,i,n,s,j,x,max:longint;
a,b:array[1..100] of longint;
Begin
  assign(input,'input.txt');
  reset(input);
  assign(output,'output.txt');
  rewrite(output);
  read(n);
  for i:=1 to n do
    read(a[i]);
  s:=0;
  if n=2 then
    s:=abs(a[1]-a[2])
  else
begin
  for j:=n downto 1 do
    for i:=1 to j-1 do
    if a[i]<a[i+1] then
      begin
        x:=a[i];
        a[i]:=a[i+1];
        a[i+1]:=x;
      end;
  for i:=1 to n div 2 do
    s:=s+a[i];
  for i:=(n div 2)+1 to n do
    f:=f+a[i];
  s:=abs(s-f);
end;
  write(s);
  close(input);
  close(output);
End.