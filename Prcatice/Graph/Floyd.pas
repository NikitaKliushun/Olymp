Var
  N,i,j,k : Longint;
  A,M : Array [1..100,1..100] of Longint;

Begin
    Assign(Input,'Input.txt');
    ReSet(Input);
     Read(N);
     For i:=1 to N do
      For j:=1 to N do
      begin
       Read(a[i,j]);
//       m[i,j]:=i;
      end;
    Close(Input);
    For k:=1 to N do
     For i:=1 to N do
      For j:=1 to N do
       if a[i,j] > a[i,k] + a[k,j] then begin
                                            a[i,j]:=a[i,k] + a[k,j];
//                                            m[i,j]:=k;
                                        end;
   Assign(Output,'Output.txt');
   ReWrite(Output);
    For i:=1 to N do
    begin
     For j:=1 to N do
      Write(a[i,j],' ');
     WriteLn;
    end;
//    For i:=1 to N do
//    begin
//     For j:=1 to N do
//      Write(m[i,j],' ');
//     WriteLn;
//    end;
   Close(Output);
End.
