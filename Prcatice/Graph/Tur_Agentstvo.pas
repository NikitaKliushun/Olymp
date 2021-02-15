Uses Math;

Type
 TList = ^List;
 List = record
             Next : TList;
             V : Longint;
        End;

Const
 Inf = 2222222;

Var
 N,M,x,y,i,j : Longint;
 Time,Up,W,Sum,Ost :Array [1..20000] of Longint;
 A : Array [1..20000] of TList;

Procedure In_List (t1,t2 : Longint);
Var
 Q : TList;

Begin
 New(Q);
 Q^.V:=T2;
 Q^.Next:=a[t1];
 a[t1]:=Q;
End;

Procedure DFS (x,pr : Longint);
Var
 P : TList;
 Y : Longint;

Begin
 Inc(j);
 P:=A[x];
 Up[x]:=Inf;
 Time[x]:=j;
 While P<>Nil do
 Begin
  Y:=P^.v;
  If y<>pr then
    If Time[y]=0 then begin
                          DFS(y,x);
                          Up[x]:=Min(Up[y],Up[x]);
                          Sum[x]:=Sum[x]+Sum[y]+1;
                          If Up[y] >= Time[x] then
                             If Up[y] >= Up[x] then begin
                                                        W[x]:=W[x]+(Ost[x]-(Sum[y]+2)) * (Sum[y]+1);
                                                        Ost[x]:=Ost[x]-(Sum[y]+1);
                                                    end;
                      End
                 else Up[x]:=Min(Up[x],Time[y]);
  P:=P^.Next;
 End;
End;

Begin
 Assign(Input,'Input.txt');
 ReSet(Input);
  Read(N,M);
  For i:=1 to M do
  Begin
   Read(x,y);
   In_List(x,y);
   In_List(y,x);
  End;
 Close(Input);
 For i:=1 to N do
 Begin
  W[i]:=N-1;
  Ost[i]:=N;
 End;
 DFS(1,0);
 Assign(Output,'Output.txt');
 ReWrite(Output);
  For i:=1 to N do
   WriteLn(W[i]);
 Close(Output);
End.
