
{ Задача  : Космодром "Центральный"     }
{ Тема    : Сортировка. Двоичный поиск  }
{ Решение : Чернушевич Игорь            }

const
   MaxD               =           100001;
type
   Zap                =           record
                                    x,y : LongInt;
                                  end;
var
   a                  :           array [0..MaxD] of Zap;
   N,M,i,T,S,F,R      :           LongInt;
   Best_L,Left,Rigth  :           LongInt;
   Ans,Best_R,Min     :           LongInt;

procedure Q_Sort(L,R : LongInt);
var
  ii,jj,Sr : LongInt;
  Q        : Zap;
begin
    ii:=L;
    jj:=R;
    Sr:=a[(L + R) shr 1].x;
    repeat
         while a[ii].x < Sr do Inc(ii);
         while a[jj].x > Sr do Dec(jj);
         if ii <= jj then begin                  { !Сортировка с учетом двух полей }
                             { if (a[ii].x > a[jj].x) or
                                 ((a[ii].x = a[jj].x) and (a[ii].y > a[jj].y)) then
                                    begin}
                                        Q:=a[ii];
                                        a[ii]:=a[jj];
                                        a[jj]:=Q;
                                   { end; }
                              Inc(ii);
                              Dec(jj);
                          end;
    until ii > jj;
    if L < jj then Q_Sort(L,jj);
    if ii < R then Q_Sort(ii,R);
end;

procedure Poisk(R1 : LongInt; var Dx : LongInt);
var
    ii,jj,D : LongInt;
begin
    D:=MaxLongInt;
    Left:=1; 
    Rigth:=N+1;
    while Rigth - Left > 1 do
        begin
            T:=(Rigth + Left) shr 1;
            if a[T].x > R1 then Rigth:=T
                           else Left:=T;
        end;
    if (a[Left].y >= S) and (a[Left].y <= F) then D:=a[Left].x;
    ii:=Left-1; jj:=Left+1;
    Best_L:=0;
    while ii > 0 do
        begin
            if (a[ii].y >= S) and (a[ii].y <= F) then
                                                     begin Best_L:=ii; Break; end;
            Dec(ii);
        end;
    Best_R:=0;
    while jj <= N do
        begin
            if (a[jj].y >= S) and (a[jj].y <= F) then
                                                     begin Best_R:=jj; Break; end;
            Inc(jj);
        end;
    if Abs(a[Best_L].x - R1) < Abs(a[Best_R].x - R1) then Min:=Best_L
                                                     else Min:=Best_R;
    if Abs(D - R1) <  Abs(a[Min].x - R1) then Dx:=a[Left].y
                                         else Dx:=a[Min].y;
end;

procedure InputData;
begin
     Assign(Input,'Input.txt');
     ReSet(Input);
     Assign(Output,'Output.txt');
     ReWrite(Output);
     ReadLn(N,M);
     for i:=1 to N do
       begin
           Read(a[i].x);
           a[i].y:=i;
       end;
     Q_Sort(1,N);
     a[0].x:=MaxLongInt;
     for i:=1 to M do
       begin
           ReadLn(S,F,R);
           Poisk(R,Ans);
           WriteLn(Ans);
       end;
     Close(Input);
     Close(Output);
end;

begin
    InputData;
end.
