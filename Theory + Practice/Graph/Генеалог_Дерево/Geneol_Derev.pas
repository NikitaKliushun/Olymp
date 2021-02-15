Type
 TList = ^List;
 List = record
         V:Longint;
         Next:TList;
        End;
Var
 N,I,K,X:Longint;
 Q:TList;
 A:Array[1..100] of TList;
 T:Array[1..100] of Longint;
 Cl:Array[1..10000] of Longint;

Procedure In_list(T1,T2:Longint);
Begin
 New(Q);
 Q^.V:=T2;
 Q^.Next:=A[T1];
 A[T1]:=Q;
End;

Procedure DFS(X1:Longint);
Var
 P:TList;
 Y:Longint;

Begin
 Cl[X1]:=1;
 P:=A[X1];
 WHile P<>Nil do
 Begin
  Y:=P^.V;
  If Cl[Y]=0 then DFS(Y)
             else If Cl[Y]=1 then Halt;
  P:=P^.Next;
 End;
 Cl[X1]:=2;
 T[K]:=X1;
 Dec(K);
End;


Begin
 Assign(Input,'Input.txt');
 ReSet(Input);
  ReadLn(N);
  For I:=1 to N do
  Begin
   While True do
   Begin
    Read(X);
    If X=0 then Break
           else In_List(I,X);
   End;
   ReadLn;
  End;
 Close(Input);
 K:=N;
 For I:=1 to N do
  If Cl[I]=0 then DFS(I);
 Assign(Output,'Output.txt');
 ReWrite(Output);
  For I:=1 to N do
   Write(T[I],' ');
 Close(Output);
End.


