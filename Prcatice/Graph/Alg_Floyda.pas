Var
 N,M,k,i,j : Longint;
 A : Array [1..1000,1..1000] of Longint;

Begin
    Assign(Input,'Input.txt');
    ReSet(Input);
     Read(N,M);
     For i:=1 to N do
      For j:=1 to M do
       Read(a[i,j]);
    Close(Input);
    For k:=1 to N do
     For i:=1 to N do
      For j:=1 to N do
       If a[i,j] > a[i,k] + a[k,j] then a[i,j]:=a[i,k] + a[k,j];
    Assign(Output,'Output.txt');
    ReWrite(Output);
     For i:=1 to N do
      For j:=1 to M do
       Write(a[i,j]);
    Close(Output);
End.