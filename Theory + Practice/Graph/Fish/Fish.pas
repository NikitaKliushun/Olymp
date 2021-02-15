Var
 N,X,Y,I,Z,H,K,Max,Min:Longint;
 M1:Array[0..100] of Longint;
 M:Array[0..100]  of Longint;
 A:Array[0..100,0..100] of Longint;

Procedure DFS(L:Longint);
Begin
 M[L]:=1;
 For I:=0 to N do
  If (M[I]=0) and (A[L,I]=1) or (A[I,L]=1) then DFS(I);
End;

Begin
 Assign(Input,'Input.txt');
 ReSet(Input);
  ReadLn(N);
  Min:=1111111;
  For I:=1 to N do
  Begin
   Read(X,Y);
   A[X,Y]:=1;
   Inc(M1[X]);
   Inc(M1[Y]);
   If X<Min then Min:=X;
   If Y<Min then Min:=Y;
   If X>Max then Max:=X;
   If Y>Max then Max:=Y;
  End;
 Close(Input);
 Z:=-1;
 H:=-1;
 For I:=Min to Max do
  If M1[I] mod 2<>0 then Begin
                          Inc(K);
                          If Z=-1 then Z:=I
                                  else If H=-1 then H:=I;
                         End;
 If K>2 then WriteLn('NO')
        else If K=0 then DFS(1)
                    else If K=2 then Begin
                                      A[Z,H]:=1;
                                      A[H,Z]:=1;
                                      DFS(Z);
                                     End;
 Assign(Output,'Output.txt');
 ReWrite(Output);
  If N=1 then Begin
               WriteLn('YES');
               Halt;
              End;
  For I:=0 to N do
   If M[I]=0 then Begin
                   Write('NO');
                   Halt;
                  End;
  Write('YES');
 Close(Output);
End.







