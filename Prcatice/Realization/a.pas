Var
 N1,N2,N : LOngint;

Begin
    Read(N);
    for N1:=1 to N do
     for N2:=N1 to N do
      If 6 * N1 + 4 * N2 = N then WriteLn(N1,' ',N2);
End.