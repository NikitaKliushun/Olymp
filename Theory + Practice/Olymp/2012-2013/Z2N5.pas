{Klyshyn Nikita, School ü3, Form 8}

Var
 N,M,Sum:Longint;

Begin
 Assign(Input,'In.txt');
 ReSet(Input);
  ReadLn(N,M);
 Close(Input);
 Sum:=0;
 If N=M then If  N mod 2<>0 then Sum:=4*(N div 2)
                            else Sum:=4*(N div 2-1)+2
        else
        If N mod 2=0 then Sum:=4*(N div 2-1)+3
                     else Sum:=4*(N div 2)+1;
 Assign(Output,'Out.txt');
 ReWrite(Output);
  Write(Sum);
 Close(Output);
End.
