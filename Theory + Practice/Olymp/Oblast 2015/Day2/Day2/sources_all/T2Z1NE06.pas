Var
 L1,L2,i,j,Ans  : Longint;
 S1,S2 : Ansistring;

Begin
 Assign(Input,'Input.txt');
 ReSet(Input);
  ReadLn(S1);
  ReadLn(S2);
 Close(Input);
 L1:=Length(S1);
 L2:=Length(S2);
 Ans:=0;
 While (L1 > 0) and (L2 > 0) do
 begin
  If S1[L1] = S2[L2] then begin
                              Inc(Ans);
                              Dec(L1);
                              Dec(L2);
                          end
                    else Break;
 End;
 Assign(Output,'Output.txt');
 ReWrite(Output);
  Write(Ans);
 Close(Output);
End.
