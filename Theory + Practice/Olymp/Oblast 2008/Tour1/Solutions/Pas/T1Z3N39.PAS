{Kryshkovskaya Elizaveta Aleksandrovna, Vileyka, 9', zadacha 3}
Program T1Z3N39;
var k,n,m,i,h,kat,j,l:longint;
a,b,c:array[1..100] of longint;
Begin
  assign(input,'input.txt');
  reset(input);
  assign(output,'output.txt');
  rewrite(output);
  read(n,m);
  for i:=1 to m do
    read(a[i]);
  for i:=1 to n do
    b[i]:=i;
  k:=0;
  for i:=1 to m do
    begin
      k:=0;
      for j:=1 to n do
        if a[i]=b[j] then
        begin
          kat:=b[j];
          for h:=k downto 1 do
              b[k]:=b[k-1];
          b[1]:=kat;
        end
      else k:=k+1;
      c[i]:=k;
    end;
  for i:=1 to m do
    write(c[i],' ');
  close(input);
  close(output);
End.