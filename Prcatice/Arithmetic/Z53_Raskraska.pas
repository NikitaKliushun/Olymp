Var
 N,M,i,j,Black,Red,Green,Blue : Longint;

Begin
    Assign(Input,'Input.txt');
    ReSet(Input);
     Read(N,M);
    Close(Input);
    Black:=N * M;
    For i:=1 to N do
     For j:=1 to M do
      if i * j mod 5 = 0 then begin
                                  Inc(Blue);
                                  Dec(Black);
                              end
                         else
         if i * j mod 3 = 0 then begin
                                     Inc(Green);
                                     Dec(Black);
                                 end
                            else
            if i * j mod 2 = 0 then begin
                                        Inc(Red);
                                        Dec(Black);
                                    end;
   Assign(Output,'Output.txt');
   ReWrite(Output);
    WriteLn('RED : ',Red);
    WriteLn('GREEN : ',Green);
    WriteLn('BLUE : ',Blue);
    WriteLn('BLACK : ',Black);
   Close(Output);
End.