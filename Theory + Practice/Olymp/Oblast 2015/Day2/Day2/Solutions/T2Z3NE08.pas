//Стельмачёнок Максим Олегович, г. Молодечно, 11 класс, задача 3
Program T2Z3NE08;
Var
  n,k,a,o:longint;
Begin
  Assign(input,'input.txt');
  Reset(input);
  Assign(output,'output.txt');
  Rewrite(output);

  Read(n,k,a);
  o:=1;
  case a of
    0:o:=1;
    1: Begin
         if k<2
           then o:=1;
         if k>=2
           then o:=2;
       end;
    2: Begin
         if k<2
           then o:=1;
         if k>=2
           then o:=2;
         if k>=3
           then o:=3;
       end;
    3: Begin
         if k<2
           then o:=1;
         if k>=2
           then o:=3;
       end;
    4: Begin
         if k<2
           then o:=1;
         if k>=2
           then o:=2;
         if k>=3
           then o:=3;
       end;
    5: Begin
         if k<2
           then o:=1;
         if k>=2
           then o:=3;
       end;
    6: Begin
         if k<2
           then o:=1;
         if k>=2
           then o:=2;
         if k>=4
           then o:=3;
       end;
    7: Begin
         if k<2
           then o:=1;
         if k>=2
           then o:=2;
       end;
    8:o:=1;
    9: Begin
         if k<2
           then o:=1;
         if k>=2
           then o:=2;
         if k>=4
           then o:=3;
       end;
  end;

  Write(o);


  Close(input);
  Close(output);
end.

