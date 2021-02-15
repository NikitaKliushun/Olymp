Type
 TList = ^List;
 List = record
         V:Longint;
         Next:TList;
        End;

Var
 N,M,I,T,Kol,X,Y:Longint;
 Q:TList;
 A:Array[1..100000] of TList;
 R:Array[1..100000] of Boolean;
 CL,S,D,Up:Array[1..100000] of Longint;

Procedure In_List(T1,T2:Longint);
Begin
 New(Q);
 Q^.V:=T2;
 Q^.Next:=A[T1];
 A[T1]:=Q;
End;

Function Min(A1,B1:Longint):Longint;
Begin
 If A1>B1 then Min:=B1
          else Min:=A1;
End;

Procedure DFS(V:Longint);
Var
 P:TList;
 Y:Longint;

Begin
 Cl[V]:=1;
 Inc(T);
 D[V]:=T;
 Up[V]:=1111111;
 P:=A[V];
 While P<>Nil do
 Begin
  Y:=P^.V;
  If Cl[Y]=0 then Begin
                   Inc(S[V]);
                   DFS(Y);
                   Up[V]:=Min(Up[V],Up[Y]);
                   If Up[Y]>=D[V] then R[V]:=True;
                  End
              else Up[V]:=Min(Up[V],D[Y]);
  P:=P^.Next;
 End;
End;

Begin
 Assign(Input,'Input.txt');
 ReSet(Input);
  ReadLn(N,M);
  For I:=1 to M do
  Begin
   ReadLn(X,Y);
   In_List(X,Y);
   In_List(Y,X);
  End;
 Close(Input);
 For I:=1 to N do
  If Cl[I]=0 then Begin
                   DFS(I);
                   If S[I]>1 then R[I]:=True
                             else R[I]:=False;
                  End;
 Assign(Output,'Output.txt');
 ReWrite(Output);
  For I:=1 to N do
   If R[I] then Inc(Kol);
  Write(Kol);
 Close(Output);
End.



