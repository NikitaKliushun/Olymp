
{ Task. Слабая К-связность.             }
{ Тема. Теория графов. Алгоритм Флойда. }
{ Сложность O(V*V*V)                    }
{ Решение. Чернушевич Игорь.            }

const
    Inf           =  10000;
var
    a             :  array [1..300,1..300] of Integer;
    i,j,k,N,M,x,y :  LongInt;

function Min(x,y : Integer) : Integer;
begin
    if x < y then Min:=x
             else Min:=y;
end;

begin
    Assign(Input,'Input.txt');
    ReSet(Input);
    Assign(Output,'Output.txt');
    ReWrite(Output);
    Read(N,M);
    for i:=1 to N do
    for j:=1 to N do
      a[i,j]:=Inf;
    for i:=1 to M do
      begin
          Read(x,y);
          a[x,y]:=Min(a[x,y],0);
          a[y,x]:=Min(a[y,x],1);
      end;
    for i:=1 to N do
    for j:=1 to N do
    for k:=1 to N do
      if a[j,k] > a[j,i]+a[i,k] then a[j,k]:=a[j,i]+a[i,k];
    k:=0;
    for i:=1 to N do
    for j:=1 to N do
    if k < a[i,j] then k:=a[i,j]; 
    Write(k);
    Close(Input);
    Close(Output);
end.
