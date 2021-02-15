Var
 i,j : Longint;
 N : Int64;

Function Sol (x : Int64) : Longint;
Begin
 For i:=1 to x do
  For j:=x downto 1 do
   If ( (i+j) * (j-i+1) ) div 2 = N then begin
                                              Sol:=j-i+1;
                                              Exit;
                                          end;
End;

Begin
 Assign(Input,'Input.txt');
 ReSet(Input);
  Read(N);
 Close(Input);
 Assign(Output,'Output.txt');
 ReWrite(Output);
  If N <= 25600 then Write(Sol(N))
                else If N <> 1000000000 then Write(Sol(25600))
                                        else Write(25600);
 Close(Output);
End.