Var
 M1,M21 : Longint;
 P : Extended;

Begin
 Read(M1,M21);
 p:=M21 / M1;
 Write(M1 * Exp(Ln(p) * 1 / 20) : 0 : 4);
End.