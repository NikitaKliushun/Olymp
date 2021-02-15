Uses Math;
const
     kol = 1 shl 3;

var
  S,B,E,W   : array [1..2*kol] of LongInt; { S-Sum, B-Begin, E-End, W-Add }
  N,K,x,y,i : LongInt;
  c         : char;


{ Вычисляем начала и концы отрезков в дереве отрезков }
procedure Init;
var
   i : LongInt;
begin
  { Нижний слой }
    for i := kol to 2*kol do
    begin
        B[i] := i - kol + 1;
        E[i] := B[i];
    end;
  { Поднимаемся выше }
    for i :=kol - 1 downto 1 do
    begin
        B[i] := B[i * 2];
        E[i] := E[i * 2 + 1];
    end;
end;

procedure Push(i : LongInt);  // проталкиваем вниз значение, на которое изменяем весь отрезок
begin
    if W[i] > 0 then  // если есть что проталкивать
            begin
                S[i]:=S[i] + W[i] * (E[i] - B[i] + 1);
                if B[i] <> E[i] then  // если вершина не лист
                           begin
                               W[i*2]:=W[i*2] + W[i];
                               W[i*2+1]:=W[i*2+1] + W[i];
                           end;
                W[i]:=0;
            end;
end;

procedure Modify_Int(L,R,i,value : LongInt);
begin
    Push(i);
    if (R < B[i]) or (L > E[i]) then Exit;
    if (L <= B[i]) and (R >= E[i]) then
              begin
                  W[i] := W[i] +  value;
                  Push(i);
                  Exit;
              end;
    Modify_Int(L,R,i*2,value);
    Modify_Int(L,R,i*2+1,value);
    // S[i]:= S[i*2] + W[i*2]*(E[i*2]-B[i*2]+1) + S[i*2+1] + W[i*2+1]*(E[i*2+1]-B[i*2+1]+1);
    S[i]:=S[i*2] + S[i*2+1];   // при возвращении сумма не добавляется, а пересчитывается
end;

function Sum_Int(L, R, i : LongInt): LongInt;
begin
    Push(i);
    if (R < B[i]) or (L > E[i]) then
              begin
                  Sum_Int := 0;
                  Exit;
              end;
    if (L <= B[i]) and (R >= E[i]) then
              begin
                  Sum_Int := S[i];
                  Exit;
              end;
    Sum_Int :=  Sum_Int(L,R,i*2) + Sum_Int(L,R,i*2+1);
end;

begin
    Assign(Input, 'input.txt');
    Reset(Input);
    Assign(Output, 'output.txt');
    Rewrite(Output);
    ReadLn(N, K);
    Init;
    for i := 1 to K do
    begin
        ReadLn(c,x,y);
        if c = 'S' then WriteLn(Sum_Int(x,y,1));
        if c = 'I' then Modify_Int(x,y,1,5);
    end;
end.
