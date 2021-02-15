Var
 N,i,j,Kol : Longint;
 A : Array [1..300] of Char;
 B : Array [1..255] of Longint;

Begin
 Read(N);
 ReadLn;
 For i:=1 to N do
 Begin
  For j:=1 to N do
  Begin
   Read(a[j]);
   Inc(b[Ord(a[j])]);
  End;
  If a[i]=a[n-i+1] then Begin
                                For j:=1 to 255 do
                                 If b[j]>0 then Inc(Kol);
                                If Kol<>2 then Begin
                                                   Write('NO');
                                                   Halt;
                                               End;
                            End
                       else Begin
                                Write('NO');
                                Halt;
                            End;
  Kol:=0;
  FillChar(b,Sizeof(b),0);
  ReadLn;
 End;
 Write('YES');
End.