Var
 N,K,KK,L,i,j,Kol : Longint;
 s : String;
 K1,j1 : Char;
 A : Array [Char] of Longint;

Begin
 ReadLn(N,K);
 K1:=Chr(Ord(0)+K);
 For i:=1 to N do
 Begin
  ReadLn(s);
  L:=Length(S);
  For j:=1 to L do
   Inc(a[s[j]]);
  For j1:='0' to k1 do
   If  a[j1]>0 then Inc(KK);
  If KK=K then Inc(Kol);
 End;
 Write(Kol);
End.