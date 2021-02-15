
{ Task   :  "Долой списывание"   }
{ Тема   :   Теория графов. DFS. Получение двудольного графа. }
{ Сложность : O(E)               }

const
    MaxN          =        101;
type
   TList          =       ^List;
    List          =        record
                              v    : LongInt;
                              next : TList;
                           end;
var
   C              :        LongInt;
   a              :        array [1..MaxN] of TList;
   Met            :        array [1..MaxN] of LongInt;
   i,N,M,xx,yy,E  :        LongInt;

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
//    Assign(Input,'Input.txt');
//    ReSet(Input);
    ReadLn(N,M);
    for i:=1 to M do
      begin
          ReadLn(xx,yy);
          In_List(xx,yy);
          In_List(yy,xx);
      end;
//    Close(Input);
end;

procedure DFS(X : LongInt);
var
  P : TList;
  Y : LongInt;
begin
     Met[X]:=C;
     P:=a[X];
     while P <> Nil do
         begin
             Y:=P^.v;
             if Met[Y] = 0 then begin
                                    Inc(E);
                                    if Met[X] = 1 then C:=2
                                                  else C:=1;
                                    DFS(Y);
                                end
                           else
                              if Met[X] <> Met[Y] then Inc(E);
             P:=P^.next;
         end;
end;

procedure OutputData;
begin
//    Assign(Output,'Output.txt');
//    ReWrite(Output);
      if E div 2 = M then WriteLn('YES')
                     else WriteLn('NO');
//    Close(Output);
end;

begin
    InputData;
    for i:=1 to N do
      if Met[i] = 0 then
              begin
                  C:=1;
                  DFS(i);
              end;
    OutputData;
end.
