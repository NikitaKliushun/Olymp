const
    MaxN                 =      100;
var
    a                    :      array [1..MaxN,1..MaxN] of LongInt;
    i,k,j,x,y,xx,yy,E,V  :      LongInt;

procedure InputData;
begin
    Assign(Input,'Input.txt');
    ReSet(Input);
    ReadLn(V);
    ReadLn(E);
    ReadLn(xx,yy);
    for i:=1 to E do
      begin
          ReadLn(x,y);
          a[x,y]:=1;
          a[y,x]:=1;
      end;
    Close(Input);
end;

procedure Sol;
begin
    for k:=1 to V do
      for i:=k+1 to V do
        for j:=i+1 to V do
          if (a[i,k] = 1) and (a[k,j] = 1) then
            if i <> j then begin
                               a[i,j]:=1;
                               a[j,i]:=1;
                           end;
end;

procedure OutputData;
begin
    Assign(Output,'Output.txt');
    ReWrite(Output);
    if a[xx,yy] = 1 then WriteLn('Yes')
                    else WriteLn('No');
    Close(Output);
end;

begin
    InputData;
    Sol;
    OutputData;
end.
