
{ Тема    : Двоичный поиск         }
{ Решение : Чернушевич Игорь       }

program Task;
const
    MaxD              =           50000;
    Infinity          =           50001;
var
    a,d,p,m           :           array [0..MaxD] of LongInt;
    i,j,n,L,R,s       :           LongInt;
    kol,nom           :           LongInt;

procedure InputData;
begin
  Assign(Input,'Posl.in');
  ReSet(Input);
  ReadLn(n);
  for i:=1 to n do
    begin
        Read(a[i]);
        d[i]:=Infinity;
    end;
  Close(Input);
end;

procedure DiH(x : LongInt);
begin
    L:=1;
    R:=N;
    while R - L > 1 do
        begin
            s:=(L + R) div 2;
            if d[s] < x then L:=s
                        else R:=s;
        end;
    if d[L] >= x then begin
                         d[L]:=x;    { Запоминаем номер предыдущего }
                         m[L]:=i;
                         j:=L-1;
                      end
                 else begin
                         if d[R] = Infinity then
                                        begin  { Считаем количество и номер
                                                 последнего элемента }
                                            Inc(kol);
                                            nom:=i;
                                        end;
                         d[R]:=x;    { Запоминаем номер предыдущего }
                         m[R]:=i;
                         j:=L;
                      end;
end;

procedure Sol;
begin
    d[1]:=a[1];
    kol:=1;
    nom:=1;
    m[1]:=1;
    for i:=2 to n do
      begin
          DiH(a[i]);
          p[i]:=m[j];
      end;
end;

procedure Out;
begin
    FillChar(m,SizeOf(m),0);
    m[0]:=kol;
    j:=nom;
    repeat
       m[kol]:=a[j];
       j:=p[j];
       Dec(kol);
    until j = 0;
end;

procedure OutputData;
begin
    Assign(Output,'Posl.out');
    ReWrite(Output);
    WriteLn(m[0]);
    for i:=1 to m[0]-1 do
      Write(m[i],' ');
    WriteLn(m[m[0]]);
    Close(Output);
end;

begin
  InputData;
  Sol;
  Out;
  OutputData;
end.