Type
 TList = ^List;
 List = record  V:Longint;
                Next:TList;
               End;
Var
 I,J,K,KK,MM,XX,YY:Longint;
 Q:TList;
 A:Array[1..50] of TList;
 M:Array[1..1000] of Longint;

Procedure DFS(X:Longint);
Var
 P:TList;
 Y:Longint;

Begin
 M[X]:=K;
 P:=A[X];
 While P<>Nil do
 Begin
  Y:=P^.V;
  If M[Y]=0 then DFS(Y);
  P:=P^.Next;
 End;
End;

Procedure In_List(T1,T2:Longint);
Begin
 New(Q);
 Q^.V:=T2;
 Q^.Next:=A[T1];
 A[T1]:=Q;
End;

Begin
 Assign(Input,'Input.txt');
 ReSet(Input);
  ReadLn(KK,MM);
  For I:=1 to MM do
  Begin
   ReadLn(XX,YY);
   In_List(XX,YY);
   In_List(YY,XX);
  End;
  For I:=1 to KK do
   If M[I]=0 then begin
                   Inc(K);
                   DFS(I);
                  End;
 Assign(Output,'Output.txt');
 ReWrite(Output);
  Write(K-1);
 Close(Output);
End.