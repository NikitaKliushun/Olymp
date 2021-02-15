
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
    P,R               :            array [1..1000] of Integer;
    N,M,i,j           :            Integer;

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
    if xx <> P[xx] then P[xx]:=FindSet(P[xx]);
    FindSet:=P[xx];
end;

procedure Union(xx,yy : Integer);
begin
    if R[xx] < R[yy] then P[xx]:=yy
                     else begin
                              P[yy]:=xx;
                              if R[xx] = R[yy] then Inc(R[xx]);
                          end;
end;

begin
    InputData;
    Init;
    i:=0;
    j:=N;
    while j > 1 do
        begin
            Inc(i);
            if FindSet(a[i].x) <> FindSet(a[i].y) then
                          begin
                              Union(FindSet(a[i].x),FindSet(a[i].y));
                              Dec(j);
                          end;
        end;
    Assign(Output,'Output.txt');
    ReWrite(Output);
    Delete(a[i].s,1,1);
    WriteLn(a[i].s);
    Close(Output);
end.