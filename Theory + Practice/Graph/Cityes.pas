Type
 Zap = record
        X,Y,R:Longint;
        End;

Var
 N,I,R,Max,J,K:Longint;
 A:Array[1..1000] of Zap;
 Pr,Rang:Array[1..1000] of Longint;

Procedure QSort(L,R:Longint);
Var
 X,C,II,JJ:Longint;

Begin
 X:=A[L+Random(R-L)].R;
 II:=L;
 JJ:=R;
 Repeat
  While X>A[II].R do
   Inc(II);
  While X<A[JJ].R do
   Dec(JJ);
  If II>=JJ then Begin
                  C:=A[JJ].R;
                  A[JJ].R:=A[II].R;
                  A[II].R:=C;
                  Inc(II);
                  Dec(JJ);
                 End;
 Until II>JJ;
 If II<R then QSort(II,R);
 If L<JJ then QSort(L,JJ);
End;

Function FindSet(X:Longint):Longint;
Begin
 If X<>Pr[X] then Pr[X]:=FindSet(Pr[X]);
 FindSet:=X;
End;

Procedure Union(XX,YY:Longint);
Begin
 If Rang[XX]>Rang[YY] then P[YY]:=P[XX]
                      else Begin
                            P[XX]:=P[YY];
                            If Rang[XX]=Rang[YY] then Inc(Rang[YY]);
                           End;
End;

Begin
 Assign(Input,'Input.txt');
 ReSet(Input);
  ReadLn(N);
  For I:=1 to N do
   ReadLn(A[I].X,A[I].Y);
 Close(Input);
 For I:=1 to N do
  For J:=I+1 to N do
  Begin
   Inc(II);
   A[II].R:=Sqrt(Sqr(A[I].X-A[J].X])+Sqr(A[I].Y-A[J].Y));
  End;
 QSort(1,N);
 K:=N;
 For I:=1 to N do
  For J:=I+1 to N do
  Begin
   While K>1 do
   Begin
    Inc(I);
    If FindSet(I)<>FindSet(J) then Begin
                                    Union(FindSet(I),FindSet(J));
                                    Dec(K);
                                   End;
   End;





