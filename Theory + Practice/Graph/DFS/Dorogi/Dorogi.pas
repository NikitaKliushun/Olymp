Var
 N,MM,XX,YY,K,I:Longint;
 A:Array[1..50,1..50] of Longint;
 M:Array[1..1000] of Longint;

Procedure DFS(X:Longint);
Var
 J:Longint;

Begin
 M[X]:=K;
 For J:=1 to N do
  If (A[X,J]=1) and (M[J]=0) then DFS(J);
End;

Begin
 Assign(Input,'Input.txt');
 ReSet(Input);
  ReadLn(N,MM);
  For I:=1 to MM do
  Begin
   Read(XX,YY);
   A[XX,YY]:=1;
   A[YY,XX]:=1;
  End;
 Close(Input);
 K:=0;
 For I:=1 to N do
  If M[I]=0 then begin
                  Inc(K);
                  DFS(I);
                 End;
 Assign(Output,'Output.txt');
 ReWrite(Output);
  Write(K-1);
 Close(Output);
End.

