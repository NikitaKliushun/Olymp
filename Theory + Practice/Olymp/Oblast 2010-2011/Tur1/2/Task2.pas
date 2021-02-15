var
    i,N,X,Y   :    LongInt;
    a         :    array [1..1000] of LongInt;
begin
    Assign(Input,'Input.txt');
    ReSet(Input);
    ReadLn(N);
    for i:=1 to N do
      Read(a[i]);
    Close(Input);
    Assign(Output,'Output.txt');
    ReWrite(Output);
    for i:=1 to N-1 do
      begin
          if (a[i] = 0) and (a[i+1]=1) then Inc(X);
          if (a[i] = 1) and (a[i+1]=0) then Inc(Y);
      end;
    if a[N] = 0 then Inc(X)
                else Inc(Y);
    if X < Y then WriteLn(X)
             else WriteLn(Y);
    Close(Output);
end.