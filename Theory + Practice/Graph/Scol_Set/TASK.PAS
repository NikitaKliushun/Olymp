program Task;
const
    MaxN                 =               100;
    MaxE                 =               5000;
type
    TList                =               ^List;
    List                 =               record
                                         W    : LongInt;
                                         Next : TList;
                                         end;
var
    a                    :               array[1..MaxN] of TList;
    m,Met                :               array[1..MaxN] of LongInt;
    Mas                  :               array[1..MaxN] of LongInt;
    i,N,x,Kol,Ans        :               LongInt;

procedure In_List(T1,T2 : LongInt);
var
  Q : TList;
begin
    New(Q);
    Q^.W:=T2;
    Met[Q^.W]:=1;
    Q^.Next:=a[T1];
    a[T1]:=Q;
end;

procedure InputData;
begin
    Assign(Input,'Input.txt');
    ReSet(Input);
    ReadLn(N);
    for i:=1 to N do
      begin
          repeat
               Read(x);
               if x <> 0 then In_List(i,x);
          until x = 0;
      end;
end;

procedure DFS(V : LongInt);
var
  Q : TList;
begin
    Q:=A[V];
    while Q <> Nil do
        begin
            if m[Q^.W] = 0 then
                              begin
                                  m[Q^.W]:=1;
                                  Inc(Kol);
                                  Mas[Kol]:=Q^.W;
                                  DFS(Q^.W);
                              end;
            Q:=Q^.Next;
        end;
end;

procedure OutputData;
begin
    Assign(Output,'Output.txt');
    ReWrite(Output);
    if Ans = 0 then WriteLn(1)
               else WriteLn(Ans);
    Close(Output);
end;

procedure SoL_A;
begin
    for i:=1 to N do
      if m[i] = 0 then 
        if Met[i] = 0 then 
                       begin
                            Inc(Ans);
                            m[i]:=1;
                            Inc(Kol);
                            Mas[Kol]:=i;
                            DFS(i);
                       end;

end;

begin
    InputData;
    SoL_A;
    OutputData;
end.