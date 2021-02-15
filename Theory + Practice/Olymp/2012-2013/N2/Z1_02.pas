Var
 i,j,sum,c : Longint;
 A         : array[1..4] of Longint;

Begin
 For i:=1 to 4 do
  Read(a[i]);
 For I:=1 to 3 do
  For J:=1 to 3 do
   if a[j]<a[j+1] then Begin
                           c:=a[j];
                           a[j]:=a[j+1];
                           a[j+1]:=c;
                        End;
 {i:=1;
 sum:=0;
 while i<=4 do
 Begin
  sum:=sum+a[i]*a[i+1];
  Inc(I,2);
 End;}
 Write(A[1]*a[2]+a[3]*a[4]);
End.
