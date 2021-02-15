{ Task. Автобусы                                }
{ Тема. Теория графов. Алгоритм Форда-Беллмана. }
{ Сложность O(V*E)                              }
{ Решение. Чернушевич Игорь.                    }

const
    Infiniti     =     10001;
type
    List         =     record
                         f, p, s, u : LongInt;
                       end;
var
    a            :     array [1..10000] of List;
    d,b          :     array [1..100] of LongInt;
    N,M,i,j,x,y  :     LongInt;
    Solution     :     Boolean;
    z,t,xx,yy    :     LongInt;

procedure InputData;
begin
    Assign(Input,'Input.txt');
    ReSet(Input);
    Read(N,xx,yy,M);
    for i:=1 to M do
      begin
          Read(x,z,y,t);
          Inc(j);
          a[j].f:=x;
          a[j].s:=y;
          a[j].p:=z;
          a[j].u:=t;
      end;
    Close(Input);
end;

procedure Init;
begin
    for i:=1 to N do
      d[i]:=Infiniti;
    d[xx]:=0;
end;

procedure Sol;
begin
    Init;
    for i:=1 to N-1 do
      for j:=1 to M do
        if d[a[j].f] <> Infiniti then
          if (d[a[j].f] <= a[j].p) and (a[j].u < d[a[j].s]) then d[a[j].s]:=a[j].u;
end;

procedure OutputData;
begin
    Assign(Output,'Output.txt');
    ReWrite(Output);
    if d[yy] <> Infiniti then WriteLn(d[yy])
                         else WriteLn(-1);
    Close(Output);
end;

begin
    InputData;
    Sol;
    OutputData;
end.
