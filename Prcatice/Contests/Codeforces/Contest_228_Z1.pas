Var
 N,i,j,Min,Min1 : Longint;
 A : Array [1..100] of Longint;

Begin
 Read(N);
 Min1:=maxlongint;
 For i:=1 to N do
 Begin
  Read(a[i]);
  If a[i]<Min1 then Min1:=a[i];
 End;
 Min:=maxlongint;
 For i:=1 to N do
  For j:=1 to N do
   If (i<>j) and (Abs(a[i]-a[j])<Min) and (Abs(a[i]-a[j])<>0) and (Abs(a[i]-a[j])<Min1) then Min:=Abs(a[i]-a[j]);
 If Min <> maxlongint then Write(Min*N)
                      else Write(N*Min1);
End.
