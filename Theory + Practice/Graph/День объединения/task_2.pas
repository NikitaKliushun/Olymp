
{ Task. День объединения                  }
{ Тема: Система непересекающихся множеств }
{ Решение : Чернушевич Игорь              }

program Task;
const
    MaxD              =            10000;
type
    Zap               =            record
                                   x,y : Integer;
                                   s   : string[12];
                                   end;
var
    a                 :            array [1..MaxD] of Zap;
    P                 :            array [1..1000] of Integer;
    N,M,i,j,x,p1,p2   :            Integer;

procedure InputData;
begin
    Assign(Input,'Input.txt');
    ReSet(Input);
    ReadLn(N,M);
    for i:=1 to M do
      ReadLn(a[i].x,a[i].y,a[i].s);
    Close(Input);
end;

procedure Init;
begin
    for i:=1 to N do
      P[i]:=i;
end;

function FindSet(xx : Integer) : Integer;
begin
    while xx <> P[xx] do xx:=P[xx];
    FindSet:=P[xx];
end;

procedure Union(xx,yy : Integer);
begin
    x:=Random(2);
    if x = 0 then P[xx]:=yy
             else P[yy]:=xx;
end;

begin
    InputData;
    Init;
    i:=0;
    j:=N;
    while j > 1 do
        begin
            Inc(i);
            p1:=FindSet(a[i].x);
            p2:=FindSet(a[i].y); 
            if p1 <> p2 then
                          begin
                              Union(p1,p2);
                              Dec(j);
                          end;
        end;
    Assign(Output,'Output.txt');
    ReWrite(Output);
    Delete(a[i].s,1,1);
    WriteLn(a[i].s);
    Close(Output);
end.