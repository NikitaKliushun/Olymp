var
  ans:int64;
  n,m,x,y,i,j:integer;
  a:array [1..400,1..400] of byte;
Procedure check(ti,tx,tj:integer);
Begin
  while (a[ti,tj]=a[tx,tj]) and (tj<=m) do
    inc(tj);
  if tj>y
    then
      if (tx-ti=1 )
        then inc(ans)
        else check(ti+1,tx-1,j)
    else
     exit;

End;
Begin
  Assign(input,'input.txt');
  Reset(input);
  Assign(output,'output.txt');
  Rewrite(output);
  ans:=0;
  Readln(n,m);
  For i:=1 to n do
    For j:=1 to m do
      read(a[i,j]);
  for i:=1 to n do
    for j:=1 to m do
        For x:=i+1 to n do
          For y:=j to m do
            check(i,x,j);
  writeln(ans);




   close(input);
   close(output);
End.