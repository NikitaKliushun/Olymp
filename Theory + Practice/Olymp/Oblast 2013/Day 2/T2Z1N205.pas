{Юнцевич Михаил Олегович Минский район 11 зад.1}
Program T2Z1N205;
Var n,k,i,m,j,sum,o:integer; a,p,z:array[1..10000] of integer;
    f1,f2:text;
Begin
  assign(f1,'input.txt');
  Reset(f1);
  assign(f2,'output.txt');
  Rewrite(f2);
  readln(f1,n,k);
  for i:=1 to n do readln(f1,a[i],p[i]);
  m:=0;
  sum:=1;
  o:=0;
  for i:=1 to n do
  begin
  o:=o+p[i];
  while a[i]<p[i] do
      if  a[i]<p[i] then
        begin
        m:=m+1;
        z[m]:=i;
        a[i]:=a[i]+1;
      end;
    end;
  if o>k then while o>k do
    begin
      m:=m+1;
      z[m]:=-i;
      o:=o-1;
      end;
  writeln(f2,m);
  for j:=1 to m do
  writeln(f2,z[j]);
  close(f1);
  close(f2);
end.
