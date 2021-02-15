
{ Task   :  "Конденсация графа"  }
{ Тема   :   Теория графов. DFS. Сильно связные компоненты. Конденсация графа. }
{ Сложность : O(N+E)             }
{ Решение :  Чернушевич Игорь    }

const
    MaxN          =    20001;
type
   TList          =    ^List;
    List          =    record
                          v  : LongInt;
                          next : TList;
                       end;
   Spisok         =    array [1..MaxN] of TList;
var
   a,b            :    Spisok;
   Met,S          :    array [1..MaxN] of LongInt;
   i,j,N,M,xx,yy  :    LongInt;
   Uk,Ans         :    LongInt;

procedure In_List (T1,T2 : LongInt; var Mas : Spisok);
var
  Q : TList;
begin
    New(Q);
    Q^.v:=T2;
    Q^.next:=Mas[T1];
    Mas[T1]:=Q;
end;

procedure InputData;
begin
    Assign(Input,'Input.txt');
    ReSet(Input);
    ReadLn(N,M);
    for i:=1 to M do
      begin
          ReadLn(xx,yy);
          In_List(xx,yy,a);
          In_List(yy,xx,b);
      end;
    Close(Input);
end;

procedure DFS_1 (X : LongInt);
var
    P : TList;
    Y : LongInt;
begin
    Met[X]:=1;
    P:=a[X];
    while  P <> Nil do
        begin
            Y:=P^.v;
            if Met[Y] = 0 then DFS_1(Y);
            P:=P^.next;
        end;
    Inc(Uk);
    S[Uk]:=X;
end;

procedure DFS_2 (X : LongInt);
var
    P : TList;
    Y : LongInt;
begin
    Met[X]:=Ans;
    P:=b[X];
    while  P <> Nil do
        begin
            Y:=P^.v;
            if Met[Y] = 0 then DFS_2(Y);
            P:=P^.next;
        end;
end;

procedure OutputData;
begin
    Assign(Output,'Output.txt');
    ReWrite(Output);
    WriteLn(Ans);
    for i:=1 to N-1 do
      Write(Met[i],' ');
    WriteLn(Met[N]);
    Close(Output);
end;

begin
    InputData;
    for i:=1 to N do
      if Met[i] = 0 then DFS_1(i);
    FillChar(Met,SizeOf(Met),0);
    for i:=N downto 1 do
      if Met[S[i]] = 0 then
              begin
                  Inc(Ans);
                  DFS_2(S[i]);
              end;
    OutputData;
end.