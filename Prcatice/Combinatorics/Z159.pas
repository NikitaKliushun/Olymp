Var
  N,i,j,x : Longint;
  A,M : array [1..20000] of Longint;

Begin
    Assign(Input,'Input.txt');
    ReSet(Input);
     Read(N);
     For i:=1 to N do
     begin
         Read(a[i]);
         m[a[i]]:=i;
     end;
    Close(Input);
    Assign(Output,'Output.txt');
    ReWrite(Output);
     For i:=1 to N do
      Write(m[i],' ');
    Close(Output);
End.
