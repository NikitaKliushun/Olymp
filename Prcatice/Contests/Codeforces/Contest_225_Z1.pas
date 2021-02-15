Var
 N,i,j,Kol : Longint;
 A : Array [1..1000,1..1000] of Char;

Begin
 Read(n);
 For i:=1 to N do
  For j:=1 to N do
   a[i,j]:='.';
 i:=1;j:=1;
 While i<=N do
 Begin
  If i mod 2 = 0 then j:=2
                 else j:=1;
  While j<=N do
  Begin
   a[i,j]:='C';
   Inc(Kol);
   Inc(J,2);
  End;
  Inc(i);
 End;
 WriteLn(Kol);
 For i:=1 to N do
 Begin
  For j:=1 to N do
   Write(a[i,j]);
  WriteLn;
 End;
End.
