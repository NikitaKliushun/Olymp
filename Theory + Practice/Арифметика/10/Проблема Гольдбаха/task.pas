var
    a,b          :    array [1..100000] of LongInt;
    i,ii,j,N,Y   :    LongInt;
    Ans1,Ans2,M  :    LongInt;

function Prost (X : LongInt) : Boolean;
begin
    Prost:=True;
    Y:=Trunc(Sqrt(X));
    i:=2;
    while i <= Y do
        begin
            if X mod i = 0 then begin Prost:=False; Exit; end;
            if i = 2 then i:=3
                     else Inc(i,2);
        end;
end;

procedure Init;
begin
    for ii:=2 to 100000 do
      if Prost(ii) then begin Inc(j); a[j]:=ii; b[ii]:=1; end;
end;

procedure Sol (N : LongInt);
begin
    for i:=1 to j do
      if b[N - a[i]] = 1 then begin Ans1:=a[i]; Ans2:=N-a[i]; Break; end;
    WriteLn(Ans1,' ',Ans2);
end;

procedure InputData;
begin
    Assign(Input,'Input.txt');
    ReSet(Input);
    Assign(Output,'Output.txt');
    ReWrite(Output);
    Init;
    while Not EoF do
        begin
            ReadLn(M);
            Sol(M);
        end;
    Close(Input);
end;

procedure OutputData;
begin
    Close(Output);
end;

begin
    InputData;
    OutputData;
end.