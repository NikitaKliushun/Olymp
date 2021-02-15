
{ Task    :  RSA++                }
{ Решение :  Чернушевич Игорь     }
{ Набираемая сумма баллов : 50 %  }

var
   i,j,N,K     :    LongInt;
   Ans         :    Int64;

function Nod (x,y : LongInt) : LongInt;
begin
    while (x <> 0) and (y <> 0) do
      if x > y then x:=x mod y
               else y:=y mod x;
    Nod:=x + y;
end;

procedure InputData;
begin
    Assign(Input,'Input.txt');
    ReSet(Input);
    ReadLn(K);
    Close(Input);
end;

procedure Sol;
begin
    N:=Trunc(Sqrt(K));
    for i:=2 to N do
      begin
          j:=i+1;
          while i * j <= K do
              begin
                  if Nod(i,j) = 1 then Inc(Ans);
                  Inc(j);
              end;
      end;
end;

procedure OutputData;
begin
    Assign(Output,'Output.txt');
    ReWrite(Output);
    WriteLn(Ans);
    Close(Output);
end;

begin
    InputData;
    Sol;
    OutputData;
end.