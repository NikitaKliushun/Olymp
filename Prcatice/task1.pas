Var
 x,max,Last : Longint;

Begin
        ReadLn(x);
        max := 0;
        while (x > 0) do
        begin
                Last := x mod 10;
                if Last > max then max := Last;
                x:=x div 10;
        end;
        WriteLn(Max);
End.