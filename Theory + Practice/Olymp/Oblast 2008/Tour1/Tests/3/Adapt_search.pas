Uses Math;

Const
 MaxN = 65535;

Var
 N,M,x,i,value,n1 : Longint;
 Pos : Array [1..MaxN] of Longint;
 Id : Array [1..4 * MaxN] of Longint;

Procedure Build (L,R,v : Longint);
Var
  Mid : Longint;

Begin
    If L = R then begin
                      If L > N then id[v]:=0
                               else id[v]:=1;
                  end
             else begin
                      Mid:=(L + R) div 2;
                      Build(L,Mid,v * 2);
                      Build(Mid + 1,R,v * 2 + 1);
                      id[v]:=id[v * 2] + id[v * 2 + 1];
                  end;
End;

Function Sum (L,R,tl,tr,v : Longint) : Int64;
Var
 Mid : Longint;
 S : Int64;

Begin
    If (L = tl) and (R = tr) then Sum:=id[v]
                             else
       begin
           S:=0;
           Mid:=(L + R) div 2;
           If (tl >= L) and (tl <= Mid) then S:=Sum(L,Mid,tl,min(Mid,tr),v * 2);
           if (tr <= R) and (tr >= Mid + 1) then S:=S + Sum(Mid+1,R,max(Mid+1,tl),tr,v * 2 +1);
           Sum:=S;
       end;
End;

Procedure Modify (L,R,v,x : Longint);
Var
  Mid : Longint;

Begin
    If L = R then id[v]:=value
             else
       begin
           Mid:=(L + R) div 2;
           If (x >= L) and (x <= Mid) then Modify(L,Mid,v * 2,x)
                                      else Modify(Mid + 1,R,v * 2 + 1,x);
           id[v]:=id[v * 2] + id[v * 2 +1];
       end;
End;

Begin
    Assign(Input,'Input.txt');
    Assign(Output,'Output.txt');
    ReSet(Input);
    ReWrite(Output);
     Read(N,M);
     For i:=1 to N do
      Pos[i]:=N - i + 1;
     N1:=N;
     Build(1,N+M,1);
     For i:=1 to M do
     begin
         Read(x);
         Write(Sum(1,N+M,Pos[x],N1,1),' ');
         value:=0;
         Modify(1,N+M,1,Pos[x]);
         Inc(N1);
         Pos[x]:=N1;
         value:=1;
         Modify(1,N+M,1,N1);
     end;
    Close(Input);
    Close(Output);
End.
