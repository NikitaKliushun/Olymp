
{ Задача  : "Поле чудес."                  }
{ Тема    : Алгоритм КМП. Префикс функция. }
{ Решение : Чернушевич Игорь               }

var
    a,pr        :  array [1..30001] of LongInt;
    i,k,Max,N   :  LongInt;

procedure InputData;
begin
    Assign(Input,'Input.txt');
    ReSet(Input);
    Read(N);
    for i:=1 to N do
      Read(a[i]);
    Close(Input);
end;

procedure Prefix;
begin
    pr[1]:=0;
    k:=0;
    for i:=2 to N do
      begin
          while (k > 0) and (a[k+1] <> a[i]) do k:=pr[k];
          if a[k+1] = a[i] then Inc(k);
          pr[i]:=k;
      end;
end;

procedure OutputData;
begin
    Assign(Output,'Output.txt');
    ReWrite(Output);
    WriteLn(N-pr[N]);
    Close(Output);
end;

begin
    InputData;
    Prefix;
    OutputData;
end.