
{ Задача    :  "Герой гитары"             }
{ Тема      :   Рекуррентные уравнения    }
{ Сложность :   О(N * K)                  }
{ Решение   :   Чернушевич Игорь          }

program Task;
const
    MaxD                 =             10000;
var
    S,a,Sum              :             array [0..MaxD] of Int64;
    i,j                  :             LongInt;
    Kol,Ans,N,K          :             Int64;

procedure InputData;
begin
    Assign(Input,'Guitar.in');
    ReSet(Input);
    ReadLn(N,K);
    for i:=1 to N do
      begin
          Read(a[i]);
          Sum[i]:=Sum[i-1] + a[i];
      end;
    Close(Input);
end;

procedure Sol;
begin
    for i:=1 to N do
      begin
          S[i]:=S[i-1]; 
          if Kol < K then  { Находим К первых, наилучших решений }
                         begin
                             if S[i] <= S[i-1] + a[i] then
                                       begin
                                           Inc(Kol);
                                           S[i]:=S[i-1] + a[i];
                                       end;
                         end
                     else
                begin
                 { S[i]  - определяется по лучшему из К предыдущих решений }
                    for j:=1 to K do
                      if i - j >= 0 then
                        begin
                            if S[i-j-1] + (Sum[i] - Sum[i-j]) >= S[i] then
                                begin
                                     S[i]:=S[i-j-1] + (Sum[i] - Sum[i-j]);
                                end;
                        end;
                end;
      end;
end;

procedure OutputData;
begin
    Assign(Output,'Guitar.out');
    ReWrite(Output);
    Ans:=S[1];
    for i:=2 to N do
      if S[i] > Ans then Ans:=S[i];
    WriteLn(Ans);
    Close(Output);
end;

begin
    InputData;
    Sol;
    OutputData;
end.