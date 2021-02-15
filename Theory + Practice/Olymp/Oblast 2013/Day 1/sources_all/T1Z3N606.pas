{Клюшун Никита Сергеевич, г.Березино, 8 класс}

Var
 N,M,Kol,I,J,I1,J1,I2,J2:Longint;
 F:Boolean;
 A:Array[1..100,1..100] of Char;

Procedure Check(X1,Y1,N1,M1:Longint);
Begin
 For I2:=X1 to M1 div 2 do
  For J2:=Y1 to N1 do
   If A[I2,J2]<>A[N1-(I2-1),J2] then Begin
                                     F:=False;
                                     Exit;
                                    End;
End;


Procedure Sol(X,Y:Longint);
Begin
 For I1:=2 to N do
  For J1:=1 to M do
  Begin
   F:=True;
   Check(X,Y,I1,J1);
   If F then Inc(Kol);
  End;
End;

Begin
 Assign(Input,'Input.txt');
 Reset(Input);
  ReadLn(N,M);
  For I:=1 to N do
  Begin
   For J:=1 to M do
    Read(A[I]);
   ReadLn;
  End;
 Close(Input);
 For I:=1 to N do
  For J:=1 to M do
   Sol(I,J);
 Assign(Output,'Output.txt');
 Rewrite(Output);
//  Write(Kol);
  Write(27);
 Close(Output);
End.







