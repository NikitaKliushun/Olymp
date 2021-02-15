program Task_2;
const
    MaxN           =         1000;
    MaxM           =         40;
    InFiniti       =         1000000000;
type
    Mas            =         array [1..MaxM] of LongInt;
var
    a,c            :         Mas;
    Best           :         array [-MaxN..MaxN] of LongInt;
    St,Cur         :         AnsiString;
    N,M,i,j,Res    :         LongInt;
    x              :         LongInt;

procedure InputData;
begin
     Assign(Input,'Fence.in');
     ReSet(Input);
     ReadLn(N,M);
     ReadLn(St);
     for i:=1 to M do
       ReadLn(a[i],c[i]);
     Close(Input);
end;

function Min (Dx,Dy : LongInt) : LongInt;
begin
    if Dx < Dy then Min:=Dx
               else Min:=Dy;
end;

procedure Sol;
begin
    Res:=InFiniti;
    for x:=1 to N do
      begin
          Cur:=Copy(St,x,Length(St))+Copy(St,1,x-1);
          FillChar(Best,SizeOf(Best),0);
          for i:=1 To N do
             begin
                 Best[i]:=InFiniti;
                 if Cur[i]='+' then Best[i]:=Best[i-1];{Min(Best[i],Best[i-1]);}
                 for j:=1 to M do
                   Best[i]:=Min(Best[i],Best[i-a[j]]+c[j]);
             end;
       Res:=Min(Res,Best[N]);
      end;
end;

procedure OutputData;
begin
    Assign(Output,'Fence.out');
    ReWrite(Output);
    WriteLn(Res);
    Close(Output);
end;

begin
    InputData;
    Sol;
    OutputData;
end.
