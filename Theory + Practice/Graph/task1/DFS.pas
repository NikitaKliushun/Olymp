const
    MaxN               =   100;
var
    a                  :   array [1..MaxN,1..MaxN] of LongInt;
    M                  :   array [1..MaxN] of LongInt;
    V,E,i,xx,yy,x,y    :   LongInt;
    F                  :   Boolean;

procedure InputData;
begin
    Assign(Input,'Input.txt');
    ReSet(Input);
    ReadLn(V);
    ReadLn(E);
    ReadLn(x,y);
    for i:=1 to E do
      begin
          ReadLn(xx,yy);
          a[xx,yy]:=1;
          a[yy,xx]:=1;
      end;
    Close(Input);
end;

procedure DFS(P : LongInt);
var
   j : LongInt;
begin
    if P = Y then
                  begin
                      F:=True;
                      Exit;
                  end;
    M[P]:=1;
    for j:=1 to V do
      if (a[P,j] <> 0) and (M[j] = 0) then DFS(j);
end;

procedure OutputData;
begin
    Assign(Output,'Output.txt');
    ReWrite(Output);
    if F then WriteLn('Yes')
         else WriteLn('No');
    Close(Output);
end;

begin
    InputData;
    F:=False;
    DFS(X);
    OutputData;
end.
