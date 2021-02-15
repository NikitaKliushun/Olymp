
{ Задача  : "Возрастающая подпоследовательность" }
{ Тема    : Двоичный поиск                       }
{ Решение : Чернушевич Игорь                     }

const
    Infiniti                 =    2000000000;
var
    a,b,Nomer,Pr             :    array [0..50001] of LongInt;
    N,i,P,L,R,S,Kol,Poz      :    LongInt;

procedure InputData;
begin
    Assign(Input,'Posl.in');
    ReSet(Input);
    ReadLn(N);
    for i:=1 to N do
      begin
          Read(a[i]);
          b[i]:=Infiniti;
          Nomer[a[i]]:=i;
      end;
    Close(Input);
end;

procedure DiHot(X : LongInt);
begin
    L:=0;R:=N;
    while R - L > 1 do
        begin
            S:=(L + R) shr 1;
            if b[S] >=  X then R:=S
                          else L:=S;
        end;
end;

procedure SoL;
begin
    for i:=1 to N do
      begin
          DiHot(a[i]);
          if b[R] = Infiniti then begin Inc(Kol); Poz:=i; end;
          b[R]:=a[i];
          P:=b[R-1];
          Pr[i]:=Nomer[P];
      end;
end;

procedure OutputData;
begin
    Assign(Output,'Posl.out');
    ReWrite(Output);
    WriteLn(Kol);
    FillChar(Nomer,SizeOf(Nomer),0);
    i:=1;
    Nomer[i]:=a[Poz];
    P:=Pr[Poz];
    while  P <> 0 do
        begin
            Inc(i);
            Nomer[i]:=a[P];
            P:=Pr[P];
        end;
    Kol:=i;
    for i:=Kol downto 2 do
      Write(Nomer[i],' ');
    WriteLn(Nomer[1]);
    Close(Output);
end;

begin
    InputData;
    SoL;
    OutputData;
end.