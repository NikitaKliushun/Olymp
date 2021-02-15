//Куличок Никита, 10 класс, Березино
//Березинская гимназия
//Тур 2 Задача 2 "Куб в прогрессии"
var
     i,X,N,kol,Z,Ans:Int64;
     j:Longint;
begin
     Assign(Input,'Input.txt');
     Reset(Input);
     Assign(Output,'Output.txt');
     ReWrite(Output);
     Readln(N);
     if N=1 then begin
                      Writeln('7');
                      Close(Input);
                      Close(Output);
                      Halt;
                  end;
     i:=2;
     Ans:=1;
     X:=Trunc(Sqrt(N));
     while i<=X do
begin
     if N=1 then Break;
     if N mod i=0 then begin
                            kol:=0;
                            while N mod i=0 do
                       begin
                            Inc(kol);
                            N:=N div i;
                        end;
                            if kol mod 3<>0 then begin
                                                      Z:=3-(kol mod 3);
                                                      for j:=1 to z do
                                                      Ans:=Ans*i;
                                                  end;
                        end;
     if i=2 then Inc(i)
            else Inc(i,2);
 end;
     if N<>1 then Ans:=Ans*N*N;
     Writeln(Ans);
     Close(Input);
     Close(Output);
 end.
