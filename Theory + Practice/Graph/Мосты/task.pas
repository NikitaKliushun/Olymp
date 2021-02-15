
{ Task   :  "Космические путешествия"   }
{ Тема   :   Теория графов. DFS. Мосты. }
{ Сложность : O(N+E)                    }
{ Решение :  Чернушевич Игорь           }

const
   MaxN           =   10000;
type
   Tlist          =   ^List;
   List           =   record
                        v,f  :  LongInt;
                        next :  TList;
                      end;
var
   a              :   array [1..MaxN] of TList;
   Met,S          :   array [1..MaxN] of LongInt;
   N,i,Kol,xx,yy  :   LongInt;
   Time,M         :   LongInt;

procedure In_List(T1,T2 : LongInt);
var
  Q : TList;
begin
    New(Q);
    Q^.v:=T2;
    Q^.f:=0;
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
          In_List(yy,xx);
      end;
    Close(Input);
end;

procedure DFS_1(X : LongInt);
var
  P : TList;
  Y : LongInt;
begin
    Inc(Time);
    S[Time]:=X;
    Met[X]:=1;
    P:=a[X];
    while P <> Nil do
        begin
            Y:=P^.v;
            if Met[Y] = 0 then
                     begin
                          DFS_1(Y);
                          P^.f:=1;
                     end;
            P:=P^.next;
        end;
end;

procedure DFS_2(X : LongInt);
var
  P : TList;
  Y : LongInt;
begin
    Met[X]:=Kol;
    P:=a[X];
    while P <> Nil do
        begin
            Y:=P^.v;
            if (Met[Y] = 0) and (P^.f = 0) then DFS_2(Y);
            P:=P^.next;
        end;
end;

procedure DFS(X : LongInt);
var
  P : TList;
  Y : LongInt;
begin
    S[X]:=1;
    P:=a[X];
    while P <> Nil do
        begin
            Y:=P^.v;
            if (S[Y] = 0) and (Met[X] <> Met[Y]) then
                                begin
                                    WriteLn(X,' ',Y);
                                    DFS(Y);
                                end;
            P:=P^.next;
        end;
end;

procedure OutputData;
begin
    Assign(Output,'Output.txt');
    ReWrite(Output);
    WriteLn(Kol-1);
    FillChar(S,SizeOf(S),0);
    for i:=1 to N do
      if S[i] = 0 then DFS (i);
    Close(Output);
end;

begin
    InputData;
    for i:=1 to N do
      if Met[i] = 0 then DFS_1(i);
    FillChar(Met,SizeOf(Met),0);
    for i:=1 to N do
      if Met[S[i]] = 0 then
                   begin
                       Inc(Kol);
                       DFS_2(S[i]);
                   end;
    OutputData;
end.

