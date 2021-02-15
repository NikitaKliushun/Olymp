Var
 N,Free,Ost : Longint;

Begin
 Assign(Input,'Input.txt');
 ReSet(Input);
  Read(N);
 Close(Input);
 Assign(Output,'Output.txt');
 ReWrite(Output);
  Free:=0;
  If N mod 2 <> 0 then begin
                           N:=N-3;
                           Inc(Free);
                       End;
  N:=N div 2;
  Ost:=N mod 3;
  Free:=Free+(N div 3)*2;
  If (Ost>0) and (Free>0) then Write('2 ',Ost,' 3 ',Free)
                          else If Ost > 0 then Write('2 ',Ost)
                                          else Write('3 ',Free);
 Close(Output);
End.
