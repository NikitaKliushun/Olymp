
{ Task    :  Регион                }
{ Тема : Сильно связные компоненты }
{ Решение :  Чернушевич Игорь      }
{ Сложность : O(E+V)               }
{ Набираемая сумма баллов : 100 %  }

Const
    MaxN           =          100;
type
    TList          =          ^List;
    List           =          record
                                v : LongInt;
                                next : TList;
                              end;
var
    a,b            :          array [1..MaxN] of TList;
    M,T            :          array [1..MaxN] of LongInt;
    N,S,i,x,y      :          LongInt;
    Ans,j          :          LongInt;

procedure In_List_a (T1,T2 : LongInt);
var
    Q : TList;
begin
    New(Q);
    Q^.v:=T2;
    Q^.next:=a[T1];
    a[T1]:=Q;
end;

procedure In_List_b (T1,T2 : LongInt);
var
    Q : TList;
begin
    New(Q);
    Q^.v:=T2;
    Q^.next:=b[T1];
    b[T1]:=Q;
end;

procedure InputData;
begin
    Assign(Input,'Input.txt');
    ReSet(Input);
    ReadLn(N,S);
    for i:=1 to S do
      begin
          ReadLn(x,y);
          In_List_a(x,y);
          In_List_b(y,x);
      end;
    Close(Input);
end;

procedure DFS(X : LongInt);
var
  Y   : LongInt;
  P   : TList;
begin
    P:=a[X];
    M[X]:=1;
    while P <> Nil do
      begin
          Y:=P^.v;
          if M[Y] = 0 then DFS(Y);
          P:=P^.next;
      end;
    Inc(j);
    T[j]:=X;
end;

procedure DFSSecond(X : LongInt);
var
  Y  : LongInt;
  P  : TList;
begin
    P:=b[X];
    M[X]:=1;
//  Write(X,' ');
    while P <> Nil do
      begin
          Y:=P^.v;
          if M[Y] = 0 then DFSSecond(Y);
          P:=P^.next;
      end;
end;

procedure OutputData;
begin
    FillChar(M,SizeOf(M),0);
    Assign(Output,'Output.txt');
    ReWrite(Output);
    for i:=N downto 1 do
      if M[T[i]] = 0 then begin
                              DFSSecond(T[i]);
                              Inc(Ans);
                          //  WriteLn;
                          end;
    WriteLn(Ans);
    Close(Output);
end;

begin
    InputData;
    for i:=1 to N do
      if M[i] = 0 then DFS(i);
    OutputData;
end.
