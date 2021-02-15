
{ Task    :  Водородный поезд      }
{ Решение :  Чернушевич Игорь      }
{ Сложность : O(N*N)               }
{ Набираемая сумма баллов : 60 %   }

const
    MaxN               =     32767;
type
    TList              =     ^List;
    List               =     record
                               v,r : LongInt;
                               next : Tlist;
                             end;
var
    a                  :     array [1..MaxN] of TList;
    M                  :     array [1..MaxN] of LongInt;
    i,x,y,z,N,Max,Sum  :     LongInt;

procedure In_List(T1,T2,T3 : LongInt);
var
    Q : TList;
begin
    New(Q);
    Q^.v:=T2;
    Q^.r:=T3;
    Q^.Next:=a[T1];
    a[T1]:=Q;
end;

procedure InputData;
begin
    Assign(Input,'Input.txt');
    ReSet(Input);
    ReadLn(N);
    for i:=1 to N-1 do
      begin
          ReadLn(x,y,z);
          In_List(x,y,z);
          In_List(y,x,z);
      end;
    Close(Input);
end;

procedure DFS(X : LongInt);
var
   Y : LongInt;
   P : TList;
begin
     P:=a[X];
     M[X]:=1;
     while P <> Nil do
       begin
           Y:=P^.v;
           if M[Y] = 0 then begin
                                Sum:=Sum + P^.r;
                                if Sum > Max then Max:=Sum;
                                DFS(Y);
                                Sum:=Sum - P^.r;
                            end;
           P:=P^.next;
       end;
end;

procedure OutputData;
begin
    Assign(Output,'Output.txt');
    ReWrite(Output);
    WriteLn(Max);
    Close(Output);
end;

begin
    InputData;
    for i:=1 to N do
      begin
          FillChar(M,SizeOf(M),0);
          DFS(i);
      end;
    OutputData;
end.
