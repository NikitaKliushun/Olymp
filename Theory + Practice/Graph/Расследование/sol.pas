
{ Task. Расследование.                                     }
{ Тема. Теория графов. DFS. Наименьший общий предок (LCA). }
{ Сложность O(V+E)                                         }
{ Решение. Чернушевич Игорь.                               }

type
    TList        =   ^List;
     List        =   record
                       V    : Integer;
                       Next : TList;
                     end;
var
    a            :   array [1..30000] of TList;
    b,m          :   array [1..60000] of Integer;
    i,k,x,y,N,j  :   Integer;

procedure In_List(T1,T2 : Integer);
var
    Q : TList;
begin
    New(Q);
    Q^.V:=T2;
    Q^.Next:=a[T1];
    a[T1]:=Q;
end;

procedure DFS(x : Integer);
var
    P : TList;
    y : LongInt;
begin
    m[x]:=1;
    Inc(j);
    b[j]:=x;
    P:=a[x];
    while P <> Nil do
    begin
        y:=P^.V;
        if m[y] = 0 then
                 begin
                      DFS(y);
                      Inc(j);
                      b[j]:=x;
                 end;
        P:=P^.Next;
    end;
end;

begin
    Assign(Input,'Input.txt');
    ReSet(Input);
    Assign(Output,'Output.txt');
    ReWrite(Output);
    Read(N,x,y);
    for i:=1 to N-1 do
    begin
        Read(k);
        In_List(k,i+1);
        In_List(i+1,k);
    end;
    DFS(x);
    k:=b[1];
    i:=1;
    while True do
    begin
        Inc(i);
        if b[i] < k then k:=b[i];
        if b[i] = y then Break;
    end;
    Write(k);
    Close(Input);
    Close(Output);
end.
