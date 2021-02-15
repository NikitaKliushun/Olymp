{ Task. Алгоритм Прима          }
{ Суть алгоритма: На каждом шаге добавляется ребро с минимальным весом,
  одна вершина которого принадлежит каркасу, а другая нет }
{ Сложность алгоритма O(E*logV) }
{ Решение : Чернушевич Игорь    }

program Task;
const
    MaxN            =           10000;
    Infiniti        =           2000000000;
type
    TList           =           ^List;
    List            =           record
                                W,Rast : LongInt;
                                Next   : TList;
                                end;
var
    A               :           array[1..MaxN] of TList;
    Poz,Heap,D,Met  :           array[1..MaxN] of LongInt;
    i,j,N,V,x,P,S   :           LongInt;
    ii,jj,M	    :           LongInt;
    QQ              :           TList;

procedure In_List(T1,T2,T3 : LongInt);
var
  Q : TList;
begin
     New(Q);
     Q^.W:=T2;
     Q^.Rast:=T3;
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
        ReadLn(ii,jj,x);
        In_List(ii,jj,x);
        In_List(jj,ii,x);
    end;
end;

procedure Init;
begin
    V:=N;
    for i:=1 to N do
      begin
          D[i]:=Infiniti;
          Heap[i]:=i;
          Poz[i]:=i;
      end;
    D[1]:=0;
end;

procedure Swap(T1,T2 : LongInt);
var
  T : LongInt;
begin
    T:=Heap[T1];
    Heap[T1]:=Heap[T2];
    Heap[T2]:=T;
    Poz[Heap[T1]]:=T1;
    Poz[Heap[T2]]:=T2;
end;

procedure HeapD(y : LongInt);
var
  Min : LongInt;
begin
    Min:=y;
    if 2*y <= V then
                   if D[Heap[2*y]] < D[Heap[Min]] then Min:=2*y;
    if 2*y+1 <= V then
                   if D[Heap[2*y+1]] < D[Heap[Min]] then Min:=2*y+1;
    if y <> Min then begin
                         Swap(y,Min);
                         HeapD(Min);
                     end;
end;

procedure HeapUp(y : LongInt);
begin
    if y > 1 then
              if D[Heap[y]] < D[Heap[y div 2]] then
                   begin
                        Swap(y,y div 2);
                        HeapUp(y div 2);
                   end;
end;

procedure ExtractMin;
begin
    P:=Heap[1];
    Met[P]:=1;  {Помечаем, чтобы исключить из рассмотрения обратное ребро}
    S:=S + D[P];
    Swap(1,V);
    Dec(V);
end;

procedure Karkas;
begin
    for i:=1 to N do
      begin
          ExtractMin;
          HeapD(1);
          QQ:=A[P];
          while QQ <> Nil do
              begin
                  if (D[QQ^.W] > QQ^.Rast) and (Met[QQ^.W] = 0)
                           then
                               begin
                                    D[QQ^.W]:=QQ^.Rast;
                                    HeapUp(Poz[QQ^.W]);
                               end;
                  QQ:=QQ^.Next;
              end;
      end;
end;

procedure OutputData;
begin
    Assign(Output,'Output.txt');
    ReWrite(Output);
    WriteLn(S);
    Close(Output);
end;


begin
    InputData;
    Init;
    Karkas;
    OutputData;
end.