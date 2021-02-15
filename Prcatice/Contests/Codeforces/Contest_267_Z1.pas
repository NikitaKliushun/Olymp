Var
 N,i,Kol,P,Q : Longint;

Begin
 Read(N);
 For i:=1 to N do
 Begin
  Read(P,Q);
  If Q-P >=2 then Inc(Kol);
 End;
 Write(Kol);
End.