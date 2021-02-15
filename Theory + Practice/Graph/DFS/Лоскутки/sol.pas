
{ Task. Лоскутки              }
{ Тема: DFS                   }
{ Сложность алгоритма O(V*V)  }
{ Решение : Чернушевич Игорь  }

const
    dx          :  array [1..4] of Integer = (-1,0,1,0);
    dy          :  array [1..4] of Integer = (0,1,0,-1);
var
    a,b         :  array [1..100,1..100] of Integer;
    i,j,N,M,Ans : Integer;

procedure DFS(x,y : Integer);
var
    q : Integer;
begin
    b[x,y]:=1;
    for q:=1 to 4 do
      if (x + dx[q] > 0) and (x + dx[q] <= N) then
       if (y + dy[q] > 0) and (y + dy[q] <= M) then
        if (a[x+dx[q],y+dy[q]] = 0) and (b[x+dx[q],y+dy[q]] = 0) then DFS(x+dx[q],y+dy[q]);
end;

begin
    Assign(Input,'Input.txt');
    ReSet(Input);
    Assign(Output,'Output.txt');
    ReWrite(Output);
    ReadLn(N,M);
    for i:=1 to N do
    for j:=1 to M do
      begin
          Read(a[i,j]);
          b[i,j]:=a[i,j];
      end;
    for i:=1 to N do
    for j:=1 to M do
      if b[i,j] = 0 then
            begin
                Inc(Ans);
                DFS(i,j);
            end;
    Write(Ans);
    Close(Input);
    Close(Output);
end.