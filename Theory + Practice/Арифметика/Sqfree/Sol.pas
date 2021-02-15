var
    i,j,K,Kol,a,b,c  :    LongInt;
    m                :    array [1..10000000] of Boolean;
begin
    Assign(Input,'Sqfree.in');
    ReSet(Input);
    Assign(Output,'Sqfree.out');
    ReWrite(Output);
    Read(K,a,b);
    for i:=2 to b do
      begin
          j:=i*i;
          if j > b then Break;
          c:=j;
          while c <= b do
              begin
                  m[c]:=True;
                  c:=c + j;
              end;
      end;
    Kol:=0;
    for i:=a to b do
      begin
          if Not m[i] then Inc(Kol);
          if Kol = K then Break;
      end;
    Write(i);
    Close(Input);
    Close(Output);
end.
