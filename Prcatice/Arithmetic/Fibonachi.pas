Var
 N,A,B,i : Longint;

Begin
    Assign(Input,'Input.txt');
    ReSet(Input);
     Read(N);
    Close(Input);
    A:=0; B:=1;
    For i:=2 to N do
    Begin
        B:=A + B;
        A:=B - A;
    End;
    Assign(Output,'Output.txt');
    ReWrite(Output);
     If N > 2 then Write(B)
              else Write(N);
    Close(Output);
End.