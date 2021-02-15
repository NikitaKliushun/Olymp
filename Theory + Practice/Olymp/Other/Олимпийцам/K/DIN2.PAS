{maximalnaja podstroka}
program Din2;
var a:array[0..200,0..200] of byte;
    s1,s2,s:string;
    n,m,i,j:byte;
function Max(a,b:byte):byte;
  begin
    if a>b
       then Max:=a
       else Max:=b;
  end;
begin
  Readln(s1);
  Readln(s2);
  n:=Length(s1);
  m:=Length(s2);
  FillChar(a,SizeOf(a),0);
  for i:=1 to n do
    for j:=1 to m do
      if s1[i]=s2[j]
         then a[i,j]:=a[i-1,j-1]+1
         else a[i,j]:=Max(a[i-1,j],a[i,j-1]);
  Writeln(a[n,m]);
  i:=n;
  j:=m;
  s:='';
  while (a[i,j]>0) do
    begin
      while a[i-1,j]=a[i,j] do
        i:=i-1;
      while a[i,j-1]=a[i,j] do
        j:=j-1;
      s:=s1[i]+s;
      i:=i-1;
      j:=j-1;
    end;
  Writeln(s);
end.