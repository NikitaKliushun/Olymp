{Куличок Никита Сергеевич, 8 класс
г.Березино, Березинский район
Первый тур, Задача 2 "Почтальоны"}
var
     i:Longint;
     F1,F2:Boolean;
     X,Nod,A,B,C,Kol:Longint;
function Nodd(N,M:Int64):Int64;
begin
     while (N<>0) and (M<>0) do
     if N>M then N:=N mod M
            else M:=M mod N;
     Nodd:=N+M;
 end;
begin
     Assign(Input,'input.txt');
     Reset(Input);
     Assign(Output,'output.txt');
     ReWrite(Output);
     Readln(A,C);
     X:=Trunc(Sqrt(C));
     for i:=2 to X do
     if C mod i=0 then begin
                            F1:=False;
                            F2:=False;
                            Nod:=i;
                            B:=(C*Nod) div A;
                            if (A*B) div Nod=C then begin
                                                         F1:=True;
                                                         Inc(Kol);
                                                     end;
                            Nod:=C div i;
                            B:=(C*Nod) div A;
                            if (A*B) div Nod=C then begin
                                                         F2:=True;
                                                         Inc(Kol);
                                                     end;
                        end;
     if (X*X=C) and (F1=True) and (F2=True) then Dec(Kol);
     Writeln(Kol);
     Close(Input);
     Close(Output);
 end.

