Var
 N,i,j : Longint;
 A,B,C,M : Array [1..10] of Longint;

Procedure P;

Begin
 If (a[c[1]]-a[c[2]])=(b[c[1]]-b[c[2]]) then Begin
                                            Write('YES');
                                            Halt;
                                        End;
End;

Procedure Per (x : Longint);
Var
 i : Longint;

Begin
 if x>2 then Begin
                 P;
                 Exit;
             end;
 For i:=1 to N*2 do
 Begin
  If m[i]<>1 then Begin
                      m[i]:=1;
                      Inc(j);
                      c[j]:=i;
                      Per(x+1);
                      m[i]:=0;
                      Dec(j);
                  End;
 End;
End;

Begin
 Read(n);
 i:=1;
  While i<=N*2 do
  Begin
   Read(a[i],b[i],a[i+1],b[i+1]);
   Inc(i,2);
  End;
 Per(1);
 Write('NO');
End.

