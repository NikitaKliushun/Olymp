{ Task. Существование пути.              }
{ Тема. Теория графов. Алгоритм Флойда.  }
{ Сложность O(V*V*V)                     }
{ Решение. Чернушевич Игорь.             }

const
    Infiniti      =       1E1000;  {!!!}
var
    a             :       array [1..100,1..100] of Extended;  {!!}
    b             :       array [1..100,1..100] of LongInt;
    i,N,q,j,k     :       LongInt;

procedure InputData;
begin
    Assign(Input,'Input.txt');
    ReSet(Input);
    ReadLn(N);
    for i:=1 to N do
      for q:=1 to N do
        begin
             Read(a[i,q]);
             if a[i,q] = 0 then a[i,q]:=Infiniti;
             if (i = q) and (a[i,q] > 0) then a[i,q]:=0;   { Убираем положительные петли }
        end;
    Close(Input);
end;

procedure Floid;
begin
    for k:=1 to N do
      for i:=1 to N do
        for j:=1 to N do
          if (a[i,k] <> Infiniti) and (a[k,j] <> Infiniti) then     { Улучшаем, если есть обе дороги }
           if a[i,j] > a[i,k] + a[k,j] then a[i,j]:=a[i,k] + a[k,j];
end;

procedure OutputData;
begin
    Assign(Output,'Output.txt');
    ReWrite(Output);
    for i:=1 to N do
      for j:=1 to N do
        if a[i,j] = Infiniti then b[i,j]:=0
                             else
             begin
                 b[i,j]:=1;
                 for k:=1 to N do 
                   if (a[i,k] <> Infiniti) and (a[k,j] <> Infiniti) and (a[k,k] < 0) then
                      b[i,j]:=2;  { Если между вершинами i и j есть - k, и путь из k в k отрицательный, то существует цикл 
                                    отрицательного веса. И расстояние из i в j сколь угодно мало }
             end;
    for i:=1 to N do
     begin
       for j:=1 to N-1 do
         Write(b[i,j],' ');
       WriteLn(b[i,N]);
     end;
    Close(Output);
end;

begin
    InputData;
    Floid;
    OutputData;
end.
