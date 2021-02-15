{Жидецкий Евгений Павлович,г.Солигорск,11 класс,задача №1}
Var
  f1,f2:text;
  k,h1,H,W,norm1,norm2,z,ostR,ostL,r,l:longint;
Begin
  Assign(f1,'input.txt');
  Assign(f2,'output.txt');
  Reset(f1);
  Rewrite(f2);
  read(f1,k);
  z:=0;
  h1:=trunc(sqrt(k));
  norm1:=0-(K-sqr(h1));
  if (norm1=0)
  then
    begin
      z:=1;
      H:=h1;
      W:=h1;
      write(f2,H,' ',W);
    end;
  if (Z<>1)
  then
    begin
      r:=h1;
      l:=h1;
      ostR:=k mod r;
      ostL:=k mod l;
      while (ostR<>0) and (ostL<>0) do
        begin
          if (l>1) then dec(l);
          if (r<k) then inc(r);
          if (r<=k) then ostR:=k mod r;
          if (l>=1) then ostL:=k mod l;
        end;
      if ostR=0
      then
       begin
         H:=r;
         W:=K div r;
       end;
      if ostL=0
      then
       begin
         H:=l;
         W:=K div l;
       end;
      norm2:=0-abs(H-W);
      if norm1>norm2
      then
        begin
          H:=h1;
          W:=h1;
        end;
      write(f2,H,' ',W);
    end;
  Close(f1);
  Close(f2);
End.
