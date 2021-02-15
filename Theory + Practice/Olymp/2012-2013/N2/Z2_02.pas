Var
 N,i,sum,M,M1 : Longint;
 a            : array [0..100] of Longint;

Function Max (a,b : Longint) : Longint;
Begin
 If a>b then Max:=a
        else Max:=b;
End;

Function Min (a,b : Longint) : Longint;
Begin
 If a<b then Min:=a
        else Min:=b;
End;

Begin
 Read(N);
 M:=0;
 M1:=0;
 For i:=1 to N do
 Begin
  Read(a[i]);
  If a[i]>M1 then Begin
                  M1:=a[i];
                  M:=i;
                 End;
 End;
 For i:=1 to M do
  sum:=sum+Max(a[i],a[i-1])-Min(a[i],a[i-1]);
 sum:=sum+M-1;
 Write(Sum);
End.