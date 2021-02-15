{ Задача  : "Карта"                                                                    }
{ Тема    : Двумерный массив. Нахождение решения в процессе построчного чтения данных. }

const
    NameIn        =         'Karta.in';
    NameOut       =         'Karta.out';
    MaxN          =          1000;
var
  a,b             :         array [1..MaxN] of LongInt;
  N,M,Ans,i,j     :         LongInt;


function Podhodit (Z,poz : LongInt) : Boolean;
var
    kol : LongInt;
begin
     Kol:=0;
     while a[poz] <> 0 do
         begin
             Inc(Kol);
             a[poz]:=0;
             Dec(poz);
         end;
     if Kol = Z then Podhodit:=True
                else Podhodit:=False;
end;

begin
    Assign(Input,NameIn);
    ReSet(Input);
    Assign(Output,NameOut);
    ReWrite(Output);
    ReadLn(N,M);
    for i:=1 to M do    { !!! }
      Read(a[i]);
    ReadLn;
    for i:=2 to N do
      begin
          Read(b[1]);
          for j:=2 to M do
            begin
                Read(b[j]);
                a[j]:=a[j] + b[j];
                if b[j] = 0 then      { Проверяем правый нижний угол }
                        if (a[j-1] > 0) and (a[j] = 0) and (b[j-1] = 0) then
                                  if Podhodit(a[j-1],j-1) then Inc(Ans);
            end;
          ReadLn;
      end;
    WriteLn(Ans);
    Close(Input);
    Close(Output);
end.