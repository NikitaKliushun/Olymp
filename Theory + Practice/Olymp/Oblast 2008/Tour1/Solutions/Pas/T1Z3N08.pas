{Жидецкий Евгений Павлович,г.Солигорск,11 класс,задача №3}
Var
  f1,f2:text;
  A,B:array[1..65535] of integer;
  n,m,i,j,col,zapr:longint;
Begin
  Assign(f1,'input.txt');
  Assign(f2,'output.txt');
  Reset(f1);
  Rewrite(f2);
  readln(f1,n,m);
  for i:=1 to n do
    A[i]:=i;
  for j:=1 to m do
    begin
      read(f1,zapr);
      col:=0;
      for i:=1 to n do
       begin
        B[j]:=A[zapr];
        if A[i]<A[zapr]
        then
          begin
           inc(A[i]);
           inc(col);
          end;
        if col=zapr
        then break;
       end;
      A[zapr]:=1;
    end;
  for j:=1 to m do
    write(f2,B[j],' ');
  Close(f1);
  Close(f2);
End.
