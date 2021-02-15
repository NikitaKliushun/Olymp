Const
 Inf = 100000;

Var
 N,S,F,i,j,Min,MinN : Longint;
 A : Array [1..100,1..100] of Longint;
 M,D : Array [1..100] of Longint;

Begin
    Assign(Input,'Input.txt');
    ReSet(Input);
     Read(N,S,F);
     For i:=1 to N do
      For j:=1 to N do
      begin
       Read(a[i,j]);
       if (a[i,j] < 0) or (a[i,j] > 100) then a[i,j]:=Inf;
      end;
    Close(Input);
    For i:=1 to N do
     D[i]:=a[s,i];
    M[s]:=1;
    For i:=1 to N-1 do
    begin
        Min:=Inf;
        For j:=1 to N do
         if (m[j] = 0) and (d[j] < Min) then begin
                                                  Min:=d[j];
                                                  MinN:=j;
                                              end;
        If Min <> Inf then
           begin
               M[MinN]:=1;
               For j:=1 to N do
                If (M[j] = 0) and (d[j] > d[MinN] + a[MinN,j]) then d[j]:=d[MinN] + a[MinN,j];
           end;
    end;
    Assign(Output,'Output.txt');
    ReWrite(Output);
     if d[f] = Inf then Write(-1)
                   else Write(d[f]);
    Close(Output);
End.
