{ Task. Алгоритм Дейкстры       }
{ Сложность алгоритма O(E*logV) }
{ Решение : Чернушевич Игорь    }

program Task;
const
    MaxN          =          10000;
    Infiniti      =          2000000000;
type
    TList         =          ^List;
    List          =          record
                               V,R   : LongInt;
                               Next  : TList;
                             end;
var
    D,Poz,Heap    :          array [1..MaxN] of LongInt;
    A             :          array [1..MaxN] of TList;
    N,M,i         :          LongInt;
    X,Y,Z,V,T,E   :          LongInt;
    P             :          TList;

procedure InList(T1,T2,T3 : LongInt);
var
    Q : TList;
begin
    New(Q);
    Q^.V:=T2;
    Q^.R:=T3;
    Q^.Next:=A[T1];
    A[T1]:=Q;
end;

procedure InputData;
begin
    Assign(Input,'Input.txt');
    ReSet(Input);
    Read(N,M);
    for i:=1 to M do
      begin
          ReadLn(X,Y,Z);
          InList(X,Y,Z);
          InList(Y,X,Z);
      end;
    Read(X,Y);
end;

procedure Swap(T1,T2 : LongInt);
var
  T3 : LongInt;
begin
    T3:=Heap[T1];
    Heap[T1]:=Heap[T2];
    Heap[T2]:=T3;
    Poz[T1]:=Heap[T1];
    Poz[T2]:=Heap[T2];
end;

procedure Init;
begin
    for i:=1 to N do
      begin
          D[i]:=Infiniti;
          Poz[i]:=i;
          Heap[i]:=i;
      end;
    V:=N;
    D[X]:=0;
    Swap(1,X);
end;

procedure HeapD(j : LongInt);
var
    Min : LongInt;
 begin
    Min:=j;
  { Спуск по левой ветке }
    if 2*j <= V then
                if D[Heap[2*j]] < D[Heap[Min]] then Min:=2*j;
  { Спуск по правой ветке }
    if 2*j+1 <= V then
                if D[Heap[2*j+1]] < D[Heap[Min]] then Min:=2*j+1;
    if Min <> j then
                begin
                    Swap(j,Min);
                    HeapD(Min);
                end;
end;

procedure HeapUp(j : LongInt);
begin
    if j > 1 then
             if D[Heap[j]] < D[Heap[j div 2]] then
                   begin
                       Swap(j,j div 2);
                       HeapUp(j div 2);
                   end;
end;

procedure ExtractMin;
begin
    T:=Heap[1];
    Swap(1,V);
    Dec(V);
    HeapD(1);
end;

procedure Deikstra;
begin
    for i:=1 to N-1 do
      begin
          //ExtractMin;
          T:=Heap[1];
          P:=A[T];
          while P <> Nil do
              begin
                  if D[T] + P^.R < D[P^.V] then
                         begin
                             D[P^.V]:=D[T] + P^.R;
                             HeapUp(Poz[P^.V]);
                         end;
                  P:=P^.Next;
              end;
          Swap(1,V);
          Dec(V);
          HeapD(1);
      end;
end;

procedure OutputData;
begin
    Assign(Output,'Output.txt');
    ReWrite(Output);
    WriteLn(D[Y]);
    Close(Output);
end;

begin
    InputData;
    Init;
    Deikstra;
    OutputData;
end.
