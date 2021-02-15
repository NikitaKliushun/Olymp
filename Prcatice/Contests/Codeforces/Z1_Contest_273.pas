Var
 i, sum,x,kol : Longint;

Begin
 for i:=1 to 5 do
 begin
  Read (x);
  sum:=sum+x;
 end;
 If ( sum >= 2 ) then If sum mod 5 = 0 then Write(sum div 5)
                                      else Write(-1)
                else Write(-1);
End.