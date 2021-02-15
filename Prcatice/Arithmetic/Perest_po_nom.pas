Var
 N,Num,i,Kol : Longint;
 A : Array [1..15] of Longint;

Function F(x : Longint) : Longint;
Begin
 If x<2 then F:=1
        else F:=x*F(x-1);
End;

Procedure P (x : Longint);
Var
 i : Longint;

Begin
 Kol:=0;
 For i:=1 to N do
 Begin
  If a[i] = 0 then Inc(Kol);
  If Kol = x then begin
                      a[i]:=1;
                      Write(i);
                      Exit;
                  end;
 End;
End;

Begin
 Read(N,Num);
 For i:=N-1 downto 1 do
 Begin
  If Num mod F(i) > 0 then Begin
                               P((Num div F(i))+1);
                               Num:=Num mod F(I);
                           End
                      else Begin
                               P(Num div F(i));
                           End;
 End;
 For i:=1 to N do
  If a[i] = 0 then Write(i);
End.