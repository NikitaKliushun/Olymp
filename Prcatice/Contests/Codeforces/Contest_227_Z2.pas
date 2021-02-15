Type
 Zap = record
            Met2 : longint;
            Met1 : Boolean;
       End;

Var
 N,M,K,V,i,x,Kol,Max : Longint;
 Met : Array [1..1000000] of Zap;
 M1 : Array [1..3000] of Longint;

Begin
 Read(N,M);

 For i:=1 to M do
  Met[i].met1:=False;

 For i:=1 to N do
 Begin
  Read(x);
  Met[x].met1:=True;
  If x>Max then Max:=x;
 End;
 V:=N;
 For i:=1 to M do
 Begin
  Read(x);
  Inc(Met[x].Met2);
  If x>Max then Max:=x;
 End;

 For i:=1 to Max do
 Begin
  If Met[i].Met1 then If Met[i].Met2=0 then Begin
                                                Inc(Kol);
                                                M1[Kol]:=i;
                                            End;
  If (Met[i].Met2>0) and (Met[i].Met1 = False) then Begin
                                                        While (Met[i].Met2>0) and (Kol>0) do
                                                        Begin
                                                         Met[M1[kol]].Met2:=1;
                                                         Dec(Kol);
                                                         Dec(Met[i].Met2);
                                                         Dec(v);
                                                        End;
                                                    End;
 If (Met[i].Met2>1) and (Met[i].Met1) then Begin
                                               While (Met[i].Met2>0) and (Kol>0) do
                                               Begin
                                                   Met[M1[kol]].Met2:=1;
                                                   Dec(Kol);
                                                   Dec(Met[i].Met2);
                                                   Dec(v);
                                               End;
                                           End;
 End;

{ For i:=1 to Max do
  If (Met[i].Met1 = True) and (Met[i].Met2=0) then Inc(K);}
 Write(v);
End.
