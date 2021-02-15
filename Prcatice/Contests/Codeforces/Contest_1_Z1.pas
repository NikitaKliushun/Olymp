Var
 N,M,A,Sum,P,Ost,K1,K2 : Int64;

Begin
  Read(N,M,A);
  P:=N*M;
 If N mod A = 0 then K1:=N div A
                else K1:=N div A + 1;
 If M mod A = 0 then K2:=M div A
                else K2:=M div A + 1;
 Write(K1*K2);
End.

