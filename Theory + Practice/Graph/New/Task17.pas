{ Task. Алгоритм Форда-Беллмана.                }
{ Тема. Теория графов. Алгоритм Форда-Беллмана. }
{ Сложность O(V*E)                              }
{ Решение. Чернушевич Игорь.                    }

const
    Infiniti      =     100001;
type
    List          =     record
                          f, s, r : LongInt;
                        end;
var
    a             :     array [1..10000] of List;
    d,b           :     array [1..100] of LongInt;
    N,M,i,j,x,y,z :     LongInt;
    Solution      :     Boolean;

procedure InputData;
begin
    Assign(Input,'Input.txt');
    ReSet(Input);
    Read(N,M);
    for i:=1 to M do
      begin
          Read(x,y,z);
          Inc(j);
          a[j].f:=x;
          a[j].s:=y;
          a[j].r:=z;
      end;
    Close(Input);
end;

procedure Init;
begin
    for i:=1 to N do
      d[i]:=Infiniti;
    d[1]:=0;
end;

procedure Sol;
begin
    Init;
    for i:=1 to N-1 do
      for j:=1 to M do
        if d[a[j].f] <> Infiniti then
          if d[a[j].f] + a[j].r < d[a[j].s] then
             d[a[j].s]:=d[a[j].f] + a[j].r;
end;

procedure OutputData;
begin
    Assign(Output,'Output.txt');
    ReWrite(Output);
    for i:=1 to N do
     if d[i] <> Infiniti then Write(d[i],' ')
                         else Write(30000,' ');
    Close(Output);
end;

begin
    InputData;
    Sol;
    OutputData;
end.
