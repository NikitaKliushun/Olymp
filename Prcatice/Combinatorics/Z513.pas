Var
 N : Longint;

Begin
    Assign(Input,'Input.txt');
    ReSet(Input);
     Read(N);
    Close(Input);
   Assign(Output,'Output.txt');
   ReWrite(Output);
    Write(1 shl N - N - 1);
   Close(Output);
End.