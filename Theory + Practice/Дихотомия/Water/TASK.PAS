
{ Задача  : "Вода"               }
{ Тема    : Двоичный поиск       }
{ Решение : Чернушевич Игорь     }

program Task;
const
    MaxD            =           100000;
    Infiniti        =           1000000000;
var
    a,m             :           array [1..MaxD] of LongInt;
    i,N,K,L,R,Kol   :           LongInt;
    Sr,Nom,j        :           LongInt;

procedure InputData;
begin
    Assign(Input,'Water.in');
    ReSet(Input);
    ReadLn(N,K);
    for i:=1 to N do
      Read(a[i]);
    Close(Input);
    Assign(Output,'Water.out');
    ReWrite(Output);
end;

procedure Q_Sort(L,R : LongInt);
var
  ii,jj,Sr,Q : LongInt;
begin
     ii:=L; jj:=R;
     Sr:=a[L + Random(R-L)];
     repeat
          while a[ii] > Sr do Inc(ii);
          while a[jj] < Sr do Dec(jj);
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

procedure Sol;
begin
    if a[1] > K then WriteLn('Impossible')
                else
       begin
           for i:=1 to N do
             if m[i] = 0 then
               begin
                   L:=i;
                   R:=N+1;
                   while R - L > 1 do
                      begin
                          Sr:=(L + R) shr 1;
                          if a[i] + a[Sr] <= K then R:=Sr
                                               else L:=Sr;
                      end;
                   Inc(Kol);
                   if a[i] + a[R] <= K then
                            begin
                                for j:=R to N do
                                  if m[j] = 0 then
                                                 begin
                                                     m[j]:=1;
                                                     Break;
                                                 end;
                            end;
               end;
           WriteLn(Kol);
       end;
    Close(Output);
end;

begin
    InputData;
    Q_Sort(1,N);
    Sol;
end.