
{ Task   :  "Космические путешествия"  }
{ Тема   :   Теория графов. DFS. Поиск точек сочленения. }
{ Сложность : O(N+E)             }
{ Решение :  Чернушевич Игорь    }

const
   MaxN           =   10000;
type
   Tlist          =   ^List;
   List           =   record
                        v :  LongInt;
                        next : TList;
                      end;
var
   a              :   array [1..MaxN] of TList;
   Met,Ans,C,Up,V :   array [1..MaxN] of LongInt;
   N,i,Kol,xx,yy  :   LongInt;
   Time,M         :   LongInt;

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
    Assign(Input,'Input.txt');
    ReSet(Input);
    ReadLn(N,M);
    for i:=1 to M do
      begin
          ReadLn(xx,yy);
          In_List(xx,yy);
          In_List(yy,xx);
      end;
    Close(Input);
end;

function Min (aa,bb : LongInt) : LongInt;
begin
    if aa < bb then Min:=aa
               else Min:=bb;
end;

procedure DFS(X : LongInt);
var
  P : TList;
  Y : LongInt;
begin
    Inc(Time);
    Met[X]:=Time;
    Up[X]:=N+1; { Up - минимальная метка достижения }
    P:=a[X];
    while P <> Nil do
        begin
            Y:=P^.v;
            if Met[Y] = 0 then
                      begin
                           Inc(C[X]);
                           DFS(Y);
                           Up[X]:=Min(Up[X],Up[Y]);  { Прямое ребро XY }
                          {!} if Up[Y] >= Met[X] then Ans[X]:=1;
                      end
                          else begin
                                   Up[X]:=Min(Up[X],Met[Y]); { Обратное ребро XY }
                                   V[X]:=V[X] + V[Y]+1;
                               end;
            P:=P^.next;
        end;
end;

procedure OutputData;
begin
    Assign(Output,'Output.txt');
    ReWrite(Output);
    for i:=1 to N do
      if Ans[i] = 1 then
                begin
                    Inc(Kol);
                  Write(i,' ');
                end;
  WriteLn;
    WriteLn(Kol);
    for i:=1 to N do
      if Ans[i] = 1 then Write(V[i],' '); WriteLn;
    Close(Output);
end;

begin
    InputData;
    for i:=1 to N do
      if Met[i] = 0 then
                begin
                    DFS(i);
                    if C[i] > 1 then Ans[i]:=1
                                else Ans[i]:=0; {!!! Так как вершина i - корень }
                end;
    OutputData;
end.

