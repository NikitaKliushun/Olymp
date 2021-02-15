Var
 N,S1,S2 : Int64;

Begin
 Read(N);
 If N mod 2 = 0 then begin
                         S1:=-((1+N-1) * (N div 2)) div 2;
                         S2:=((2+N)*(N div 2)) div 2;
                     end
                else begin
                         S1:=-((1+N) * ((N div 2)+1)) div 2;
                         S2:=((2+N-1) * (N div 2)) div 2
                     end;
 Write(S1+S2);
End.
