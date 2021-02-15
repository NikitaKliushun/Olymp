{Klyshyn Nikita, School ü3, Form 8}

Var
 X,Y,N,H,Z,K,P:Real;

Begin
 Assign(Input,'In.txt');
 ReSet(Input);
  ReadLn(N,X,Y,Z);
 Close(Input);
 H:=N/3;
 K:=H*Z;
 P:=X+(H-Y)+K;
 Assign(Output,'Out.txt');
 ReWrite(Output);
  WriteLn(P:0:0);
 Close(Output);
End.
