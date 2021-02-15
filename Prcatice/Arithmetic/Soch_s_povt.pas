Var
 N,K,i,Kol : Longint;
 A : Array [1..30] of Longint;

Procedure Print;
Var
 i,P : Longint;

Begin
 P:=1;
 For i:=1 to N+K-1 do
 Begin
  If a[i]=0 then Inc(P)
            else Write(P,' ');
 End;
End;

Procedure Per (x,kol_0,pr : Longint);
Var
 j : Longint;

Begin
 If Kol_0 = K-1 then Begin
                       Print;
                       WriteLn;
                       Inc(Kol);
                       Exit;
                     End;
 If x >= N+K-1 then Exit;
 For j:=0 to 1 do
 Begin
                     a[x]:=j;
  If a[x]=0 then Inc(Kol_0);
                     Per(x+1,Kol_0,j);
                     Dec(Kol_0);
 End;
End;

Begin
 Read(N,K);
 For i:=1 to N + K - 1 do
  a[i]:=1;
 Per(1,0,0);
 Write(Kol);
End.
