Type
 TList = ^List;
 List = record
             Next : TList;
             V : Longint;
        end;

Var
 K,N,i,j,x,Ans : Longint;
 f,f1 : Boolean;
 A : Array [1..100000] of TList;
 M : Array [1..100000] of Longint;

Procedure In_List_a (t1,t2 : Longint);
Var
 Q : TList;

Begin
    New(Q);
    q^.V:=t2;
    q^.Next:=a[t1];
    a[t1]:=q;
End;

{Procedure In_List_b (t1,t2 : Longint);
Var
 Q : TList;

Begin
    New(Q);
    q^.V:=t2;
    q^.Next:=b[t1];
    b[t1]:=q;
End;}

Function Check : Boolean;
Var
 i : Longint;

Begin
    Check:=False;
    For i:=1 to N do
     if m[i] = 0 then begin
                          Check:=True;
                          Exit;
                      end;
End;

Procedure DFS (x,d : Longint);
Var
 P : TList;
 y : Longint;

Begin
    if f then Exit;
    m[x]:=1; P:=a[x];
    While P <> Nil do
    begin
        y:=P^.V;
        if m[y] = 0 then DFS(y,d+1)
                    else begin
                             If (d+1) mod 2 = 0 then Ans:=2
                                                else Ans:=3;
                             if f1 then Ans:=3;
                             WriteLn(Ans);
                             f:=true;
                             Exit;
                          end;
        P:=P^.Next;
    end;
    f1:=true;
//    Inc(f); T[f]:=x;
End;

{Procedure DFS_1 (x : Longint);
Var
 P : TList;
 y : Longint;

Begin
    m[x]:=1; P:=b[x];
    While P <> Nil do
    begin
        y:=P^.V;
        if m[y] = 0 then DFS_1(y);
        P:=P^.Next;
    end;
End;  }

Procedure Sol;
Var
 i : Longint;

Begin
    f:=false; f1:=false; Ans:=0;
    fillchar(m,sizeof(m),0);
//    fillchar(t,sizeof(t),0);
    For i:=1 to N do
     If m[i] = 0 then DFS(i,0);
{    FillChar(m,sizeof(m),0);
    For i:=N downto 1 do
     if m[t[i]] = 0 then begin
                             DFS_1(t[i]);
                             Inc(Ans);
                         end;}
End;

Begin
    Assign(Input,'Input.txt');
    Assign(Output,'Output.txt');
    ReSet(Input);
    ReWrite(Output);
     Read(K);
     For i:=1 to K do
     begin
         a[1]:=Nil;
         Read(N);
         For j:=1 to N do
         begin
             Read(x);
             In_List_a(x,j);
//           In_List_b(j,x);
         end;
         Sol;
//         WriteLn(Ans+1);
     end;
    Close(Input);
    Close(Output);
End.