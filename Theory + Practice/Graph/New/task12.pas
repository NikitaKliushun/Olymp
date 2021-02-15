{ Task. Заправки                                }
{ Тема. Теория графов. Алгоритм Форда-Беллмана. }
{ Сложность O(V*E)                              }
{ Решение. Чернушевич Игорь.                    }

const
    Infiniti     =     10001;
type
    List         =     record
                         f, s, r : LongInt;
                       end;
var
    a            :     array [1..5000] of List;
    d,b          :     array [1..100] of LongInt;
    N,M,i,j,x,y  :     LongInt;
    Solution     :     Boolean;

procedure InputData;
begin
    Assign(Input,'Input.txt');
    ReSet(Input);
    Read(N);
    for i:=1 to N do
      Read(b[i]);
    Read(M);
    for i:=1 to M do
      begin
          Read(x,y);
          Inc(j);
          a[j].f:=x;
          a[j].s:=y;
          a[j].r:=b[x];
          Inc(j);
          a[j].f:=y;
          a[j].s:=x;
          a[j].r:=b[y];
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
      for j:=1 to 2*M do
        if d[a[j].f] <> Infiniti then
          if d[a[j].f] + a[j].r < d[a[j].s] then
             d[a[j].s]:=d[a[j].f] + a[j].r;
    Solution:=True;
    for i:=1 to 2*M do
      if d[a[i].f] <> Infiniti then
        if d[a[i].f] + a[i].r < d[a[i].s] then Solution:=False;
end;

procedure OutputData;
begin
    Assign(Output,'Output.txt');
    ReWrite(Output);
    if Solution and (d[N] <> Infiniti) then WriteLn(d[N])
                                         else WriteLn(-1);
    Close(Output);
end;

begin
    InputData;
    Sol;
    OutputData;
end.
