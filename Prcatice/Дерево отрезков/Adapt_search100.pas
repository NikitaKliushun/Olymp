Uses Math;

Var
  N,M,i,x,kol,n1 : Longint;
  Pos : Array [1..65535] of Longint;
  Id: Array [1..65535 * 4{262140}] of Longint;

Procedure Init;
Begin
    For i:=1 to N do
     Pos[i]:=N - i + 1;
    {kol:=1;
    while kol < N do
     kol:=kol * 2;}
    N1:=N;
End;

{Procedure Sum (L,R : Longint);
Var
  S : Longint;

Begin
    S:=0;
    L:=ppos[L]; R:=ppos[R];
    if R<L then R:=R*2+1;
    while L<=R do
    begin
        If L mod 2 = 1 then begin
                                S:=S + Id[L];
                                Inc(L);
                            end;
        If R mod 2 = 0 then begin
                                S:=S + Id[R];
                                Dec(R);
                            end;
       L:=L div 2;
       R:=R div 2;
    end;
    Write(S,' ');

End;  }

Function Sum (L,R,v,LL,RR : Longint) : Int64;
Var
  Mid : Longint;
  S : Int64;

Begin
    if (L = LL) and (R = RR) then Sum:=id[v]
       else begin
                S:=0;
                Mid:=(L + R) div 2;
                if (LL >= L) and (LL <= Mid) then S:=Sum(L,Mid,v * 2,LL,Min(Mid,RR));
                If (RR <= R) and (RR >= Mid+1) then S:=S+Sum(Mid+1,R,v * 2 +1,Max(Mid+1,LL),RR);
                sum:=S;
            end;
End;

{Procedure Modify (v,value : Longint);
Begin
    v:=v + Kol - 1;
    while v > 0 do
    begin
        Id[v]:=Id[v] + value;
        v:=v div 2;
End;}

Procedure Modify (L,R,v,value,x : Longint);
Var
  Mid : Longint;

Begin
    if L = R then id[v]:=value
             else begin
                      Mid:=(L + R) div 2;
                      If (x >=L) and (x <= Mid) then Modify(L,Mid,v * 2,value,x)
                                                else Modify(Mid+1,R,v * 2 + 1,value,x);
                      id[v]:=id[v * 2] + id[v * 2 + 1];
                  end;
End;

Function Sol (x : Longint) : Longint;

begin
    Write(Sum(1,N+M,1,Pos[x],N1),' ');
    Modify(1,N+M,1,0,Pos[x]);
    Inc(N1);
    Pos[x]:=N1;
    Modify(1,N+M,1,1,N1);
end;

Procedure Build (L,R,v : Longint);
Var
  Mid : Longint;

Begin
    if L = R then begin
                       id[v]:=1;
                  //     ppos[L]:=v;
                  // end
//                  begin
                      If L > N then id[v]:=0
                               else id[v]:=1;
                  end
             else begin
                      Mid:=(L + R) div 2;
                      Build(L,Mid,v * 2);
                      Build(Mid+1,R,v * 2 + 1);
                      id[v]:=id[v * 2] + id[v * 2 + 1];
                  end;
End;

Begin
    Assign(Input,'Input.txt');
    Assign(Output,'Output.txt');
    ReSet(Input);
    ReWrite(Output);
     Read(N,M);
     Init;
     Build(1,N+M,1);
     For i:=1 to M do
     begin
      Read(x);
      Sol(x);
     end;
    Close(Input);
    Close(Output);
End.
