Var
 N,M,i,j,K,Ans,Y : Longint;
 F : Boolean;
 x : Char;
 A : Array [0..1000] of Longint;

Begin
 ReadLn(N,M);
 F:=False;
 For i:=1 to N do
 Begin
  For j:=1 to M do
  Begin
   Read(x);
   If (x='S') and (F=False) then Begin
                                     Write(-1);
                                     Halt;
                                 End
                            else If (x='S') and (F=True) then Begin
                                                                  Inc(a[K]);
                                                                  F:=False;
                                                              End;
   If F then Inc(K);
   If x='G' then Begin
                     K:=0;
                     F:=True;
                 End;
  End;
  ReadLn;
 End;
  For i:=0 to M do
   If a[i]>0 then Inc(Ans);
 Write(Ans);
End.
