const
    MaxN          =    101;
type
   TList          =    ^List;
    List          =    record
                          v  : LongInt;
                          next : TList;
                       end;
var
   a              :    array [1..MaxN] of TList;
   Met,S          :    array [1..MaxN] of LongInt;
   i,j,N,M,xx,yy  :    LongInt;
   Uk             :    LongInt;

procedure In_List (T1,T2 : LongInt);
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
    ReadLn(N);
    ReadLn(M);
    for i:=1 to M do
      begin
          ReadLn(xx,yy);
          In_List(xx,yy);
          In_List(yy,xx);
      end;
    Close(Input);
    Assign(Output,'Output.txt');
    ReWrite(Output);
end;

procedure Print;
begin
    for j:=1 to N-1 do
      Write(S[j],' ');
    WriteLn(S[N]);
end;

procedure DFS (X : LongInt);
var
    P : TList;
    Y : LongInt;
begin
    Inc(Uk);
    S[Uk]:=X;
    Met[X]:=1;
    if Uk = N then Print;
    P:=a[X];
    while  P <> Nil do
        begin
            Y:=P^.v;
            if Met[Y] = 0 then begin
                                   DFS(Y);
                                   S[Uk]:=0;
                                   Dec(Uk);
                                   Met[Y]:=0;
                               end;
            P:=P^.next;
        end;
end;

begin
    InputData;
    for i:=1 to N do
      begin
          FillChar(Met,SizeOf(Met),0);
          Uk:=0;
          DFS(i);
      end;
    Close(Output);
end.
