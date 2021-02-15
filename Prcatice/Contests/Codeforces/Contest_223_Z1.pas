Var
 N,i,S,D,l,r,kol : Longint;
 A : Array [1..1000] of Longint;

Function P (l1,r1 : Longint) : Longint;
Begin
 if a[l]>a[r] then begin
                        P:=a[l];
                        Inc(l);
                   End
              else Begin
                        P:=a[r];
                        Dec(r);
                   End;
End;

Begin
 Read(N);
 For i:=1 to N do
  Read(a[i]);
 R:=N;
 L:=1;
 Kol:=1;
 While R>=L do
 Begin
  If Kol mod 2=1 then S:=S + P(a[l],a[r])
                 else D:=D + P(a[l],a[r]) ;
  Inc(Kol);
 End;
 Write(S,' ',D);
End.