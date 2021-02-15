{Клюшун Никита Сергеевич, г.Березино, 8 класс}

Var
 A,C:Int64;
 I,L,Kol:Longint;

Begin
 Assign(Input,'Input.txt');
 Reset(input);
  ReadLn(A,C);
 Close(Input);
 L:=Trunc(Sqrt(C));
 For I:=1 to L do
  If C mod I =0 then Begin
                      If I Mod A=0 then Inc(Kol);
                      If (C div I)<>I then If(C div I) mod A=0 then Inc(Kol);
                     End;
 Assign(Output,'Output.txt');
 ReWrite(Output);
  Write(Kol);
 Close(Output);
End.
