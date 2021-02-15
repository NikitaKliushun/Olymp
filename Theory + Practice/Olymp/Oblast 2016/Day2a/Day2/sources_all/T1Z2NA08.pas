{Kliushun Nikita Sergeevich, Berezino, Task 2}

Var
  N,M,i,j,Sum : Longint;
  H,B,PosH,PosB,PosA,Met : Array [1..3000] of Longint;

Procedure Swap (Var x,y : Longint);
Var
 q : Longint;

Begin
    q:=x;
    x:=y;
    y:=q;
End;

Procedure Sort (Var A,Pos : Array of Longint; N : Longint);
Var
  i,j,q : Longint;

Begin
    for i:=0 to N-1 do
     for j:=0 to N-i-2 do
      if a[j] > a[j+1] then begin
                                Swap(a[j],a[j + 1]);
                                Swap(Pos[j],Pos[j + 1]);
                            end;
End;

Procedure Sort_1;
Var
  i,j,q : Longint;

Begin
    for i:=1 to N do
     for j:=1 to N-i do
      if PosH[j] > PosH[j + 1] then begin
                                        Swap(PosH[j],PosH[j + 1]);
                                        Swap(PosA[j],PosA[j + 1]);
                                  //      Swap(H[j],H[j+1]);
                                  //      Swap(B[j],B[j+1]);
                                    end;
End;

Begin
    Assign(Input,'Input.txt');
    ReSet(Input);
     Read(N,M);
     For i:=1 to N do
     begin
         Read(H[i]);
         PosH[i]:=i;
     end;
     For i:=1 to M do
     begin
         Read(B[i]);
         PosB[i]:=i;
     end;
    Close(Input);
    Sort(H,PosH,N);
    Sort(B,PosB,M);
    PosA[1]:=PosB[1]; Met[1]:=1; Sum:=H[1] + B[1];
    For i:=2 to N do
    begin
        For j:=1 to M do
         if (Met[j] = 0) and (H[i] + B[i] > Sum) then begin
                                                          Sum:=H[i] + B[i];
                                                          Met[j]:=1;
                                                          PosA[i]:=PosB[j];
                                                      end;
    end;
    Sort_1;
    Assign(Output,'Output.txt');
    ReWrite(Output);
     For i:=1 to N do
      if PosA[i] = 0 then begin
                              Write(-1);
                              Close(Output);
                              Halt;
                          end;
     For i:=1 to N-1 do
      Write(PosA[i],' ');
     Write(PosA[N]);
    Close(Output);
End.