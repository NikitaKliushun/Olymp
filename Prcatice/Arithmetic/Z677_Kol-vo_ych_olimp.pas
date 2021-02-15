Var
 N,M,K,D,P : Longint;
 Ans : Extended;

Begin
 Assign(Input,'Input.txt');
 ReSet(Input);
  Read(K,N,M,D);
 Close(Input);
 P:=(K*N*M-N*M-K*M-K*N);
 If P>0 then begin
                 Ans:=D * K * N * M / P;
                 If (Abs(Int(Ans) - Ans) > 0.0000000000001) or (Ans<0) then Ans:=-1;
             end
        else Ans:=-1;
 Assign(Output,'Output.txt');
 ReWrite(Output);
  Write(Ans:0:0);
 Close(Output);
End.
