Var
 N,K,I,J,Beg,Fin,Min,Kol:Longint;
 A:Array[1..36500] Of Longint;
 B:Array[1..36500] of Longint;

Procedure Q_Sort(L,R:Longint);
Var
 II,JJ,C,X:Longint;

Begin
 II:=L;
 JJ:=R;
 Repeat
 X:=A[(L+R) div 2];
 While A[II]<X do
  Inc(II);
 While A[JJ]>X do
  Dec(JJ);
 If II<=JJ then Begin
                 C:=A[II];
                 A[II]:=A[JJ];
                 A[JJ]:=C;
                 C:=B[II];
                 B[II]:=B[JJ];
                 B[JJ]:=C;
                 Inc(II);
                 Dec(JJ);
                End;
 Until II>JJ;
 If II<R then Q_Sort(II,R);
 If L<JJ then Q_Sort(L,JJ);
End;

Begin
 Assign(Input,'Input.txt');
 ReSet(Input);
  ReadLn(N,K);
  For I:=1 to N do
  Begin
   Read(A[I]);
   B[I]:=I;
  End;
 Close(Input);
 Q_Sort(1,N);
 Min:=111111111;
 For I:=N downto 1 do
  For J:=I-(K-1) downto 1 do
   If A[I]-A[J]<Min then Begin
                          Min:=A[I]-A[J];
                          Kol:=I-J+1;
                          Beg:=J;
                          Fin:=I;
                         End;
 Assign(Output,'Output.txt');
 ReWrite(Output);
  WriteLn(Kol);
  For I:=Beg to Fin do
   Write(B[I],' ');
 Close(Output);
End.






