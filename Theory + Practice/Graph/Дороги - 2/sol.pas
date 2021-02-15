type
   TList        =  ^List;
   List         =  record
                     v    : LongInt;
                     next : TList;
                   end;
var
   a            :  array [1..10000] of TList;
   b,c          :  array [1..10000] of LongInt;
   N,M,i,x,y    :  LongInt;

procedure In_List(T1,T2 : LongInt);
var
    Q : TList;
begin
    New(Q);
    Q^.v:=T2;
    Q^.next:=a[T1];
    a[T1]:=Q;
end;

procedure DFS(x,pr : LongInt);
var
  P   : TList;
  y   : LongInt;
begin
    P:=a[x];
    Write(x,' ');
    if b[x] = 1 then Exit;
    b[x]:=1;     { Откуда выезжаю }
    while P <> Nil do
    begin
        y:=P^.v;
        if (y <> pr) and (c[y] = 0) { Куда въезжаю } then
                      begin
                          DFS(y,x);
                          Write(x,' ');
                      end;
        P:=P^.next;
    end;
    c[x]:=1;
end;

begin
    Assign(Input,'Input.txt');
    ReSet(Input);
    Assign(Output,'Output.txt');
    ReWrite(Output);
    Read(N,M);
    for i:=1 to M do
    begin
        Read(x,y);
        In_List(x,y);
        In_List(y,x);
    end;
    WriteLn(2*M);
    DFS(1,0);
    Close(Input);
    Close(Output);
end.
