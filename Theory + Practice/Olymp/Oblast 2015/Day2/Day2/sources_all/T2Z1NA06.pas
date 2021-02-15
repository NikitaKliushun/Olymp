//Куличок Никита, 10 класс, Березино
//Березинская гимназия
//Тур 2 Задача 1 "Краткость-сестра таланта"
var
     S,T:AnsiString; //Ansistring!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
     Ans,L1,L2:Longint;
begin
     Assign(Input,'Input.txt');
     Reset(Input);
     Assign(Output,'Output.txt');
     ReWrite(Output);
     Readln(S);
     Readln(T);
     L1:=Length(S);
     L2:=Length(T);
     Ans:=0;
     while (L1>0) and (L2>0) do
begin
     if S[L1]=T[L2] then Inc(Ans)
                    else Break;
     Dec(L1);
     Dec(L2);
 end;
     Writeln(Ans);
     Close(Input);
     Close(Output);
 end.
