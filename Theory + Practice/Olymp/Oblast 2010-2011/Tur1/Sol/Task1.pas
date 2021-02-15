
{ Task    :  Беговая дорожка       }
{ Решение :  Чернушевич Игорь      }
{ Сложность : O(N*M)               }
{ Набираемая сумма баллов : 100 %  }

const
    MaxN            =     251;
var
    a               :     array [1..MaxN, 1..MaxN] of Char;
    N,M,S,K,i,j     :     LongInt;
    ans1,ans2       :     LongInt;

procedure InputData;
begin
    Assign(Input,'Input.txt');
    ReSet(Input);
    ReadLn(N,M,S);
    for i:=1 to N do
      begin
          for j:=1 to M do
            Read(a[i,j]);
          ReadLn;
      end;
    Close(Input);
end;

procedure Init;
begin
    for i:=1 to N do
      a[i,M+1]:='#';
    for j:=1 to M do
      a[N+1,j]:='#';
end;

procedure Sol_G;
begin
     for i:=1 to N do
       for j:=1 to M+1 do
         if a[i,j] = '.' then Inc(K)
                         else
                             begin
                                 if K >= S then ans1:=ans1 + K - S + 1;
                                 K:=0;
                             end;
end;

procedure Sol_V;
begin
     for j:=1 to M do
       for i:=1 to N+1 do
         if a[i,j] = '.' then Inc(K)
                         else
                             begin
                                 if K >= S then ans2:=ans2 + K - S + 1;
                                 K:=0;
                             end;
end;

procedure OutputData;
begin
    Assign(Output,'Output.txt');
    ReWrite(Output);
    WriteLn(ans1+ans2);
    Close(Output);
end;

begin
    InputData;
    Init;
    Sol_G;
    Sol_V;
    OutputData;
end.
