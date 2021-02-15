Var
 N,P,i,x,y,U,D : LongInt;

Begin
 Read(N);
 For i:=1 to N do
 Begin
  ReadLn(x,y);
  If (x mod 2<>0) and (y mod 2 <>0) then Begin
                                             P:=101;
                                             Break;
                                         End;
  If x mod 2<>0 then Begin
                         Inc(P);
                         Inc(D);
                     End;
  If y mod 2<>0 then Begin
                         Inc(P);
                         Inc(U);
                     End;

 End;
 If P=N then Write(P)
        else If P mod 2<>0 then Write(-1)
                           else If D<=U then Write(D)
                                        else Write(U);
End.
