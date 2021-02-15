const
    MaxN             =        200;
    MaxE             =        20000;
type
   TList             =       ^List;
    List             =        record
                                 v    : LongInt;
                                 next : TList;
                              end;
var
   a                 :        array [1..MaxN] of TList;
   S                 :        array [1..MaxE] of LongInt;
   Num               :        array [1..MaxN] of LongInt;
   i,N,M,xx,yy,Kol   :        LongInt;
   F                 :        Boolean;

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
    Assign(Input,'Eiler.in');
    ReSet(Input);
    ReadLn(N,M);
    for i:=1 to M do
      begin
          ReadLn(xx,yy);
          Inc(Num[xx]);
          Inc(Num[yy]);
          In_List(xx,yy);
          In_List(yy,xx);
      end;
    Close(Input);
    Assign(Output,'Eiler.out');
    ReWrite(Output);
end;

function Yes_No : Boolean;
var
    j : LongInt;
begin
    Yes_No:=True;
    for j:=1 to N do
      if Num[j] mod 2 <> 0 then
                    begin
                        Yes_No:=False;
                        Exit;
                    end;
end;

procedure DFS(X : LongInt);
var
  P,Pred : TList;
  Y      : LongInt;
begin
    while a[X] <> Nil do
       begin
           Y:=a[X]^.v;
           a[X]:=a[X]^.next; { Удаляем прямое ребро }
           if a[Y] <> Nil then
               begin
                    P:=a[Y]; { Удаляем обратное ребро }
                    if P^.v = X then a[Y]:=P^.next
                                else
                         begin
                             while (P <> Nil) and (P^.v <> X) do
                                begin
                                    Pred:=P;
                                    P:=P^.next;
                                 end;
                             if P <> Nil then
                               if P^.v = X then  Pred^.next:=P^.next;
                         end;
                    DFS(Y);
                end;
        end;
    Inc(Kol);
    S[Kol]:=X;
end;

begin
    InputData;
    if Yes_No then
          begin
              F:=True;
              for i:=1 to N do
                if (a[i] <> Nil) and F then
                   begin
                       DFS(i);
                       F:=False;
                   end;
              for i:=Kol downto 2 do
                Write(S[i],' ');
              WriteLn(S[1]);
          end
              else WriteLn('No solution');
    Close(Output);
end.
