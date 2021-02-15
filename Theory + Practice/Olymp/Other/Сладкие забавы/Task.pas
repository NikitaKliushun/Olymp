
{ Задача  :  "Сладкие забавы"        }
{ Тема    :   Рекуррентные уравнения }
{ Решение :   Чернушевич Игорь       }

program Task2;
var
    a                :        array [1..50] of Int64;
    m                :        array [0..500000] of Int64;
    K,Sum,S          :        Int64;
    i,j,N            :        LongInt;

procedure InputData;
begin
    Assign(Input,'Input.txt');
    ReSet(Input);
    ReadLn(N,K);
    for i:=1 to N do
      begin
          Read(a[i]);
          if a[i] > K then a[i]:=K;   { !!! }
          Sum:=Sum + a[i];   
      end;
    Close(Input);
end;

procedure Sol;
begin
    m[0]:=1;
    for i:=1 to N do
      for j:=Sum downto 1 do
        if j - a[i] >= 0 then  m[j]:=m[j] + m[j-a[i]];
end;

procedure OutputData;
begin
    Assign(Output,'Output.txt');
    ReWrite(Output);
    for i:=K to Sum-K do
      S:= S + m[i];
    WriteLn(S);
    Close(Output);
end;

begin
    InputData;
    Sol;
    OutputData;
end.