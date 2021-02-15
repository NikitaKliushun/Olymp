Var
 N,i,j,Sum1,Sum2,K : Longint;
 a : Array [1..10000] of Longint;

Procedure Sum (x : Longint);
Begin
    If K mod 2 = 1 then Sum1:=Sum1+x
                   else Sum2:=Sum2+x;
end;

Begin
    Assign(Input,'Input.txt');
    ReSet(Input);
     Read(N);
     For i:=1 to N do
      Read(a[i]);
    Close(Input);
    i:=1; j:=N; K:=1; Sum1:=0; Sum2:=0;
    while (K <= N) do
    begin
        If a[i] > a[j] then begin
                                Sum(a[i]);
                                Inc(i);
                            end
                       else
        If a[i] < a[j] then begin
                                Sum(a[j]);
                                Dec(j);
                            end
                       else
        If a[i] = a[j] then begin
                                Sum(a[i]);
                                Inc(i);
                            end;
       Inc(K);
    end;
   Assign(Output,'Output.txt');
   ReWrite(Output);
    Write(Sum1,':',Sum2);
   Close(Output);
End.
