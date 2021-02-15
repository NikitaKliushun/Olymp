Var
 N,Min,C,i : Longint;
 A : Array [1..100] of Longint;

Begin
 Read(N,C);
 i:=2;
 Min:=0;
 Read(a[1]);
 While i<=N do
 Begin
  Read(a[i]);
  If (a[i-1]-a[i]-c>Min) then Min:=a[i-1]-a[i]-c;
  Inc(i);
 End;
 Write(Min);
End.