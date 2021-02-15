
{ Task. Быстрая сортировка по двум полям }

const
    MaxN        =      1000000;
type
    List        =      record
                         x,y : LongInt;
                       end;
var
    a           :      array [1..MaxN] of List;
    i,N         :      LongInt;

procedure Q_Sort(L,R : LongInt);
var
   ii,jj : LongInt;
   Q,s   : List;
begin
    ii:=L;
    jj:=R;
    s:=a[L+Random(R-L+1)];
    repeat
         while (a[ii].x < s.x) or (a[ii].x = s.x) and (a[ii].y > s.y) do Inc(ii);  { !!! - нельзя ставить a[ii].y >= s.y
                            т.к. i перейдет границу среднего элемента и может оказаться больше j, будет зацикливание }
         while (a[jj].x > s.x) or (a[jj].x = s.x) and (a[jj].y < s.y) do Dec(jj);
         if ii <= jj then
                        begin
                            Q:=a[ii];
                            a[ii]:=a[jj];
                            a[jj]:=Q;
                            Inc(ii);
                            Dec(jj);
                        end;
    until ii > jj;
    if L < jj then Q_Sort(L,jj);
    if ii < R then Q_Sort(ii,R);
end;

begin
    Assign(Input,'Test.in');
    ReSet(Input);
    Assign(Output,'Test.out');
    ReWrite(Output);
    Read(N);
    for i:=1 to N do
      Read(a[i].x,a[i].y);
    Q_Sort(1,N);
    for i:=1 to N do
      WriteLn(a[i].x,' ',a[i].y);
    Close(Input);
    Close(Output);
end.
