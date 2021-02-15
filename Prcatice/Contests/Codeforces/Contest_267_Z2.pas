//Uses Math;

Var
 N,M,K,X,i,Kol,R,Z : Longint;
 A : Array [1..1000] of Longint;

{Function Check (x : Longint) : Longint;
Var
 K : Longint;

Begin
  K:=0;
  While x>0 do
  Begin
   If x and 1 = 1 then Inc(K);
   x:=x shr 1;
  End;
  Check:=Kol;
End;

Function Min (a,b : Longint) : Longint;
Begin
 if a<b then Min:=a
        else Min:=b;
End;

Function Max(a,b : longint) : Longint;
Begin
 If a>b then max:=a
        else max:=b;
End;             }

Begin
 Read(N,M,K);
 For i:=1 to M do
  Read(A[i]);
 Read(X);
 For i:=1 to M do
 Begin
  R:=a[i] xor x;
  Z:=0;
  While R>0 do
  Begin
   If R and 1 = 1 then Inc(Z);
   R:=R shr 1;
  End;
  If Z <= K then Inc(Kol);
 End;
 Write(Kol);
End.
