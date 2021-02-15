Uses Math;

Type
 TList = ^List;
 List = record
             V : Longint;
             Next : TList;
        End;

Const
 Inf = 11111;

Var
 N,x,y,i,j : Longint;
 Q : TList;
 A : Array [1..100] of TList;
 Up,C,Time,Ans : Array [1..100] of Longint;

Procedure In_List (t1,t2 : Longint);
Begin
 New(Q);
 Q^.V:=t1;
 Q^.Next:=a[t2];
 a[t1]:=Q;
End;

Procedure DFS(x : Longint);
Var
 P : Tlist;
 y : Longint;

Begin
 P:=a[x];
 Up[x]:=Inf;
 Inc(j);
 Time[x]:=j;
 While P<>Nil do
 Begin
  Y:=P^.V;
  If Time[y]=-0 then Begin
                      Inc(c[x]);
                      DFS(y);
                      Up[x]:=Min(Up[x],Up[y]);
                      If Up[y]>=Time[x] then ans[x]:=1;
                     End
                else Up[y]:=Min(Up[x],Time[y]);
  P:=P^.Next;
 End;
End;

Begin
 Assign(Input,'Input.txt');
 ReSet(Input);
  Read(N);
  For i:=1 to N do
  Begin
   Read(x,y);
   In_List(x,y);
   In_List(y,x);
  End;
 Close(Input);
 DFS(1);
 If c[1]<2 then ans[1]:=0;
 Assign(Output,'Output.txt');
 ReWrite(Output);
  For i:=1 to N do
   If ans[i]=1 then Write(a[x]^.V,' ',a[x]^.Next^.V);
 Close(Output);
End.
End.