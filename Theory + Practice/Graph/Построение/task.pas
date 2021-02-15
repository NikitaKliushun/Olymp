
{ Task   :  "Построение"         }
{ Тема   :   Теория графов. DFS. Топологическая сортировка. }
{ Сложность : O(N+E)             }
{ Решение :  Чернушевич Игорь    }

const
    MaxN              =   100;
type
    TList             =   ^List;
    List              =   record
                             v : LongInt;
                             next : TList;
                          end;
var
   a                  :   array [1..MaxN] of TList;
   S,Met,D,F          :   array [1..MaxN] of LongInt;
   N,M,i,j,Kol,xx,yy  :   LongInt;
   Time               :   LongInt;
   FL                 :   Boolean;

procedure In_List(T1,T2 : LongInt);
var
  Q : TList;
begin
    New(Q);
    Q^.v:=T2;
    Q^.next:=a[T1];
    a[T1]:=Q;
end;

procedure InputData;
begin
    Assign(Input,'Input.txt');
    ReSet(Input);
    ReadLn(N,M);
    for i:=1 to M do
      begin
          ReadLn(xx,yy);
          In_List(xx,yy);
      end;
    Close(Input);
end;

procedure DFS(X : LongInt);
var
  P : TList;
  Y : LongInt;
begin
    Met[X]:=1;
    P:=a[X];
    while P <> Nil do
      begin
          Y:=P^.v;
          if Met[Y] = 0 then DFS(Y)
                        else
                  if Met[Y] = 1 then { Признак существования обратного ребра и, следовательно, цикла }
                           begin
                               FL:=False;
                               Exit;
                           end;
          P:=P^.next;
      end;
    Met[X]:=2;
    Inc(Kol);
    S[Kol]:=X;
end;

procedure OutputData;
begin
    Assign(Output,'Output.txt');
    ReWrite(Output);
    if FL then begin
                   WriteLn('Yes');
                   for i:=Kol downto 2 do
                     Write(S[i],' ');
                   WriteLn(S[1]);
               end
          else WriteLn('No');
    Close(Output);
end;

begin
    InputData;
    Fl:=True;
    for i:=1 to N do
      if FL and (Met[i] = 0) then DFS(i);
    OutputData;
end.

