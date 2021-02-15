Uses Math;
const
     kol = 1 shl 3;
     inf = 100;

var
  S,B,E,Q : array [1..2*kol] of LongInt; { S-Sum, B-Begin, E-End, Q-Min }
  N,a     : LongInt;

{ Количество точек на отрезке от A до B }
function Sum(L, R, i : LongInt): LongInt;
begin
    if (R < B[i]) or (L > E[i]) then
              begin
                  Sum := 0;
                  Exit;
              end;
    if (L <= B[i]) and (R >= E[i]) then
              begin
                  Sum := S[i];
                  Exit;
              end;
    Sum :=  Sum(L,R,i*2) + Sum(L,R,i*2+1);
end;

{ Минимум на отрезке от A до B }
function Min_Z(L, R, i : LongInt): LongInt;
begin
    if (R < B[i]) or (L > E[i]) then
              begin
                  Min_Z := inf;
                  Exit;
              end;
    if (L <= B[i]) and (R >= E[i]) then
              begin
                  Min_Z := Q[i];
                  Exit;
              end;
    Min_Z :=Min(Min_Z(L,R,i*2),Min_Z(L,R,i*2+1));
end;


{ Добавление точки }
procedure Modify(p,value : LongInt);
begin
    p := kol + p - 1;
    while p > 0 do
    begin
        inc(S[p],value);
        if S[p] < Q[p] then Q[p]:=S[p];
        p := p div 2; { Поднимаемся к отрезку-предку }
    end;
end;

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
   { Присваиваем бесконечности }
    for i:=1 to kol*2 do
      Q[i]:=Inf;
end;

var
    K,i,p,x,y : LongInt;
begin
    Assign(Input, 'input.txt');
    Reset(Input);
    Assign(Output, 'output.txt');
    Rewrite(Output);
    Read(N, K);
    Init;
    for i:=1 to N do
    begin
        Read(a);
        Modify(i,a);
    end;
    for i := 1 to K do
    begin
        Read(p);
        if p = 0 then
                    begin
                        Read(x, y);
                        Writeln(Sum(x, y, 1));
                        WriteLn('min = ' ,Min_z(x,y,1));
                    end
                 else Modify(p,1);
    end;
end.
