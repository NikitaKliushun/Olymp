Type
 TList = ^List;
 List = record
         V,K,Num:Longint;
         Next:TList;
        End;

Var
 N,M,I,X,Y,Mt,II:Longint;
 A:Array[1..100000] of TList;
 Cl,T,Met:Array[1..100000] of Longint;
 Q:TList;

Procedure In_List(T1,T2:Longint);
Begin
 New(Q);
 Q^.V:=T2;
 Q^.Next:=A[T1];
 Q^.Num:=I;
 A[T1]:=Q;
End;

Procedure DFS(X1:Longint);
Var
 P:TList;
 Y:Longint;

Begin
 Cl[X1]:=1;
 A[X1]^.K:=1;
 P:=A[X1];
 While P<>Nil do
 Begin
  Y:=P^.V;
  If Cl[Y]=0 then DFS(Y);
  P:=P^.Next;
 End;
 Inc(II);
 T[II]:=X1;
End;

Procedure DFS_1(X1:Longint);
Var
 P:TList;
 Y:Longint;

Begin
 Cl[X1]:=1;
 P:=A[X1];
 While P<>Nil do
 Begin
  Y:=A[X1]^.V;
  If (A[X1]^.Next^.K=1) and (Cl[Y]=0) then DFS_1(Y);
  P:=P^.Next;
 End;
 Inc(Mt);
 Met[X1]:=Mt;
End;

Procedure DFS_2(X1:Longint);
Var
 P:TList;
 Y:Longint;

Begin
 Cl[X1]:=1;
 P:=A[X1];
 While P<>Nil do
 Begin
  If Met[Y]<>Met[P^.V] then WriteLn(A[Y]^.Num);
  Y:=P^.V;
  If Cl[Y]=0 then DFS_2(Y);
  P:=P^.Next;
 End;
End;

Begin
 Assign(Input,'Input.txt');
 ReSet(Input);
  ReadLn(N,M);
  For I:=1 to M do
  Begin
   Read(X,Y);
   In_List(X,Y);
   In_List(Y,X);
  End;
 Close(Input);
 For I:=1 to N do
  If Cl[I]=0 then DFS(I);
 FillChar(Cl,Sizeof(Cl),0);
 For I:=1 to N do
  If Cl[T[I]]=0 then DFS_1(T[I]);
  FillChar(Cl,Sizeof(Cl),0);
 Assign(Output,'Output.txt');
 ReWrite(Output);
  For I:=1 to N do
   If Cl[T[I]]=0 then DFS_2(T[I]);
 Close(Output);
End.