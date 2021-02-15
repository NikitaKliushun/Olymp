Var
 N,K,Min,Max,A1_N,A2_N : Longint;

Begin
 Read(N,K);
 A1_N:=N - K;
 A2_N:=N div K;
 Max:=((1 + A1_N) * A1_N ) div 2;
 Min:=K * ((A2_N * (A2_N-1)) div 2);
 Write(Min,' ',Max);
End.