
{ Задача  : "Визы"               }
{ Тема    : Сортировка и поиск   }
{ Решение : Чернушевич Игорь     }


Program Visa;
var
    a                    :               array [1..5001] of String[30];  {!!!}
    i,j,N,Ans,Max        :               LongInt;
    S                    :               String[30];
procedure InputData;
begin
    Assign(Input,'Visa.in');
    ReSet(Input);
    ReadLn(N);
    for i:=1 to N do
      begin
          ReadLn(S);
          Inc(j);
          a[j]:=Copy(S,1,10);
          a[j]:=a[j] + '1';
          Inc(j);
          a[j]:=Copy(S,12,10);
          a[j]:=a[j] + '2';
      end;
    Close(Input);
end;

procedure Q_Sort(L,R : LongInt);
var
     ii,jj   : LongInt;
     Sr,Q    : String[30];
begin
     ii:=L;jj:=R;
     Sr:=a[L + Random(R-L)];
     repeat
          while a[ii] < Sr do Inc(ii);
          while a[jj] > Sr do Dec(jj);
          if ii <= jj then
                         begin
                              Q:=a[ii];
                              a[ii]:=a[jj];
                              a[jj]:=Q;
                              Inc(ii);
                              Dec(jj);
                         end;
     until ii > jj;
     if ii < R then Q_Sort(ii,R);
     if L < jj then Q_Sort(L,jj);
end;

procedure OutputData;
begin
     Assign(Output,'Visa.out');
     ReWrite(Output);
     for i:=1 to j do
       if a[i][11] = '1' then Inc(Ans)
                         else begin
                                   if Ans > Max then Max:=Ans;
                                   Dec(Ans);
                              end;
     WriteLn(Max);
     Close(Output);
end;

begin
    InputData;
    Q_Sort(1,j);
    OutputData;
end.
