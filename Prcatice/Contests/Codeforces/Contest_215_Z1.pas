Var
 N,D,M,Sum,Sum1,x,i : Longint;

Begin
 Read(N,D);
 For i:=1 to N do
 Begin
  Read(x);
  Sum1:=Sum1+x;
 End;
 Read(m);
 Sum:=Sum1+((N-M)*D);
 Write(Sum);
End.