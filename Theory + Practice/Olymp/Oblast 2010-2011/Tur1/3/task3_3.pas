
{ Task    :  Водородный поезд      }
{ Решение :  Чернушевич Игорь      }
{ Сложность : O(N)                 }
{ Набираемая сумма баллов : 100 %  }

const
    MaxN               =     32767;
type
    TList              =     ^List;
    List               =     record
                                v,r  : LongInt;
                                next : Tlist;
                             end;
var
    a                  :     array [1..MaxN] of TList;
    M,D                :     array [1..MaxN] of LongInt;
    i,x,y,z,N,Sum      :     LongInt;

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

function Max (a,b : LongInt) : LongInt;
begin
    if a > b then Max:=a
             else max:=b;
end;

procedure DFS(X : LongInt);
var
   Y,ans1,ans2    : LongInt;
   P              : TList;
begin
     P:=a[X];
     M[X]:=1;
     ans1:=0;
     ans2:=0;
     while P <> Nil do
       begin
           Y:=P^.v;
           if M[Y] = 0 then
                  begin
                       DFS(Y);
                       D[X]:=Max(D[X], D[Y] + P^.r);
                       if D[Y] + P^.r > ans1
                            then begin
                                      ans2:=ans1;
                                      ans1:=D[Y] + P^.r;
                                  end
                            else
                                if D[Y] + P^.r > ans2 then ans2:=D[Y] + P^.r;
                  end;
           P:=P^.next;
       end;
    Sum:=Max(Sum,ans1+ans2);
end;

procedure OutputData;
begin
    Assign(Output,'Output.txt');
    ReWrite(Output);
    WriteLn(Sum);
    Close(Output);
end;

begin
    InputData;
    DFS(1);
    OutputData;
end.
