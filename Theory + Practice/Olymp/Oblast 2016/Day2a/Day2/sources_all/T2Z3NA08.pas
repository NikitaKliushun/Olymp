{Kliushun Nikita Sergeevich, Berezino, Task 3}

Var
 N,K,i,j,L,Ans : Longint;
 A,d : Array [1..1000] of Longint;

Procedure Per (x,L,Last : Longint);
Var
 i : Longint;

Begin
    if x >= N then begin
                       If L > Ans then Ans:=L;
                       Exit;
                   end;
    For i:=x+1 to N do
     if a[i] > Last then Per(i,L+1,a[i]);
End;

Begin
    Assign(Input,'Input.txt');
    ReSet(Input);
     Read(N,K);
     For i:=1 to N do
      Read(a[i]);
    Close(Input);
    Per(1,1,a[1]);
    Assign(Output,'Output.txt');
    ReWrite(Output);
     Write(Ans);
    Close(Output);
End.