Const
 Dx : Array [1..4] of Longint = (-1,0,1,0);
 Dy : Array [1..4] of Longint = (0,1,0,-1);

Var
 N,M,i,j,cod : Longint;
 A : Array [1..100,1..100] of Longint;
 B : Array [1..100,1..100] of String;

Function P (x,y : Longint) : Boolean;
Var
 i,C : Longint;
 C1 : String;

Begin
 p:=True;
 for i:=1 to 4 do
  if (x + Dx[i] > 0) and (y + Dy[i] > 0)
     and (x + Dx[i] <=N) and (y + Dy[i] <=M)
     then begin
              Val(b[x+Dx[i],y+Dy[i]],C,cod);
              Str(a[x,y],C1);
              if (b[x+Dx[i],y+Dy[i]] = '') or (a[x,y] = C) then begin
                                                                    b[x+Dx[i],y+Dy[i]]:=C1;
                                                                    Exit;
                                                                end;
          end;
 P:=False;
End;

Begin
 Read(N,M);
 For i:=1 to N do
  For j:=1 to M do
   Read(a[i,j]);
 For i:=1 to N do
  For j:=1 to M do
   if P(i,j) = False then begin
                              Write('NO');
                              Halt;
                          end;
 WriteLn('YES');
 For i:=1 to N do
 begin
  For j:=1 to M do
   Write(b[i,j],' ');
  WriteLn;
 end;
End.

