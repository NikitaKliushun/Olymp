{$R+,Q+,S+,I+}
Uses Math, TestLib;

Type
  Integer=LongInt;

Const
  MaxN=100000;
  MaxW=1000000000;

Type
  TCoord=Record
    At:Integer;
    ID:Integer;
    Which:Integer;
  End;

Var
  I,A,N,W,H,AnsH,MaxH,CH:Integer;
  P,Q:Array[1..MaxN]Of Integer;
  Coord:Array[1..2*MaxN]Of TCoord;
  Avail:Array[1..MaxN]Of Boolean;
  Height:Array[1..8*MaxN]Of Integer;
  AllSame:Array[1..8*MaxN]Of Boolean;

Function Less(Const A,B:TCoord):Boolean;
Begin
  Less:=(A.At<B.At) Or (A.At=B.At) And (A.Which<B.Which);
End;

Procedure QSort(L,R:Integer);
Var
  I,J:Integer;
  X,Y:TCoord;
Begin
  I:=L;
  J:=R;
  X:=Coord[L+Random(R-L+1)];
  While I<=J Do Begin
    While Less(Coord[I],X) Do Inc(I);
    While Less(X,Coord[J]) Do Dec(J);
    If I<=J Then Begin
      Y:=Coord[I];
      Coord[I]:=Coord[J];
      Coord[J]:=Y;
      Inc(I);
      Dec(J);
    End;
  End;
  If L<J Then QSort(L,J);
  If I<R Then QSort(I,R);
End;

Procedure NormalizeCoords;
Var
  I,CX:Integer;
Begin
  For I:=1 To N Do Begin
    Coord[2*I-1].At:=P[I];
    Coord[2*I-1].ID:=I;
    Coord[2*I-1].Which:=1;
    Coord[2*I].At:=P[I]+Q[I]-1;
    Coord[2*I].ID:=I;
    Coord[2*I].Which:=2;
  End;
  QSort(1,2*N);
  CX:=0;
  For I:=1 To 2*N Do Begin
    If (I=1) Or (Coord[I-1].At<>Coord[I].At) Then Inc(CX);
    Case Coord[I].Which Of
      1:P[Coord[I].ID]:=CX;
      2:Q[Coord[I].ID]:=CX-P[Coord[I].ID]+1;
    End;
  End;
  W:=CX;
End;

Procedure Assert(What:Boolean);
Begin
  If Not What Then Quit(_Fail,'Assertion failed');
End;

Function GetMax(Root,RootL,RootR,L,R:Integer):Integer;
Var
  RootM:Integer;
Begin
  If (RootL>R) Or (L>RootR) Then Begin GetMax:=-1; Exit; End;
  If AllSame[Root] Or ((RootL=L) And (RootR=R)) Then Begin GetMax:=Height[Root]; Exit; End;
  RootM:=(RootL+RootR) Div 2;
  GetMax:=Max(GetMax(Root*2,RootL,RootM,L,Min(R,RootM)),GetMax(Root*2+1,RootM+1,RootR,Max(L,RootM+1),R));
End;

Procedure SetMax(Root,RootL,RootR,L,R,What:Integer);
Var
  RootM:Integer;
Begin
  If (RootL>R) Or (L>RootR) Then Exit;
  If (RootL=L) And (RootR=R) Then Begin Height[Root]:=Max(Height[Root],What); AllSame[Root]:=True; Exit; End;
  RootM:=(RootL+RootR) Div 2;
  If AllSame[Root] Then Begin
    AllSame[Root*2]:=True;
    AllSame[Root*2+1]:=True;
    AllSame[Root]:=False;
    Height[Root*2]:=Height[Root];
    Height[Root*2+1]:=Height[Root];
  End;
  Height[Root]:=Max(Height[Root],What);
  SetMax(Root*2,RootL,RootM,L,Min(R,RootM),What);
  SetMax(Root*2+1,RootM+1,RootR,Max(L,RootM+1),R,What);
End;

Begin
  N:=Inf.ReadLongInt;
  Assert((N>=1) And (N<=MaxN));
  W:=Inf.ReadLongInt;
  Assert((W>=1) And (W<=MaxW));
  For I:=1 To N Do Begin
    P[I]:=Inf.ReadLongInt;
    Q[I]:=Inf.ReadLongInt;
    Assert((P[I]>=1) And (Q[I]>=1) And (P[I]+Q[I]-1<=W));
  End;
  NormalizeCoords;
  FillChar(Height,SizeOf(Height),0);
  FillChar(AllSame,SizeOf(AllSame),True);
  MaxH:=0;
  H:=Ouf.ReadLongInt;
  If (H<=0) Then Quit(_PE,'Impossible height value');
  FillChar(Avail,SizeOf(Avail),True);
  For I:=1 To N Do Begin
    A:=Ouf.ReadLongInt;
    If (A<1) Or (A>N) Then Quit(_PE,'Impossible brick number');
    If Not Avail[A] Then Quit(_PE,'Duplicate brick number');
    Avail[A]:=False;
    CH:=1+GetMax(1,1,W,P[A],P[A]+Q[A]-1);
    SetMax(1,1,W,P[A],P[A]+Q[A]-1,CH);
    If CH>MaxH Then MaxH:=CH;
  End;
  AnsH:=Ans.ReadLongInt;
  If MaxH<AnsH Then Quit(_Fail,'Brick layout (not the reported height probably) is better than jury''s');
  If MaxH<>H Then Quit(_WA,'Brick layout does not correspond to the reported height');
  If MaxH>AnsH Then Quit(_WA,'Too high');
  Quit(_OK,'');
End.