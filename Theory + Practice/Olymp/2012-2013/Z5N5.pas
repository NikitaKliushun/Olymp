{Nikita Klyshyn, School ü3, Form 8}

Var
 N,K,M,I,J,II,JJ,Kol,KK:Longint;
 A:Array[1..200,1..200] of Shortint;

Begin
 Assign(Input,'In.txt');
 ReSet(Input);
  ReadLn(N,M,K);
  For I:=1 to N do
   For J:=1 to M do
   Begin
    Read(A[I,J]);
    If A[I,J]=0 then A[I,J]:=-3;
    If A[I,J]=1 then A[I,J]:=-1;
    If A[I,J]=2 then A[I,J]:=-2;
    End;
 Close(Input);
 For I:=1 to N do
  For J:=1 to N do
  Begin
   If A[I,J]=-2 then begin
                     II:=I;
                     JJ:=J;
                     Kol:=0;
                     While (A[II,JJ]<>-2) and (II<=N) do
                     Begin
                      If A[II,JJ]=-3 then begin
                                          If A[II,JJ]>Kol then A[II,JJ]:=Kol;
                                          Inc(Kol);
                                         end;
                     If A[II,JJ]=-2 then A[II,JJ]:=0;
                      Inc(II);
                      If Kol>K then Inc(KK);
                     End;
                     Kol:=0;
                     While (A[II,JJ]<>-1) and (JJ<=M) do
                     Begin
                      If A[II,JJ]=-3 then begin
                                          If A[II,JJ]>Kol then A[II,JJ]:=Kol;
                                          Inc(Kol);
                                         end;
                      If A[II,JJ]=-2 then A[II,JJ]:=0;
                      Inc(JJ);
                      If Kol>K then Inc(KK);
                     End;
                     Kol:=0;
                     While (A[II,JJ]<>-1) and (JJ<=M) do
                     Begin
                      If A[II,JJ]=-3 then begin
                                          If A[II,JJ]>Kol then A[II,JJ]:=Kol;
                                          Inc(Kol);
                                         end;
                      If A[II,JJ]=-2 then A[II,JJ]:=0;
                      Dec(JJ);
                      If Kol>K then Inc(KK);
                     End;
                     Kol:=0;
                     While (A[II,JJ]<>-1) and (II<=N) do
                     Begin
                     If A[II,JJ]=-3 then begin
                                          If A[II,JJ]>Kol then A[II,JJ]:=Kol;
                                          Inc(Kol);
                                         end;
                      If A[II,JJ]=-2 then A[II,JJ]:=0;
                      Dec(II);
                      If Kol>K then Inc(KK);
                     End;
                    End;
  End;
 Assign(Output,'Out.txt');
 ReWrite(Output);
  Write(KK);
 Close(Output);
End.









