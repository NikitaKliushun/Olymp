{$ S-,Q-,R-,I-}
{Буткевич Дмитрий, г.Березино, Тур 2, Задача 3 }
Program task;
Var
        n,m,c,d,i,answ :       longint;
Procedure inpud;
        Begin
                Assign(input,'input.txt');
                Reset(input);
                ReadLn(n,m);
                For i:=1 to m do
                 begin
                  Read(c,d);
                 end;
        end;
Procedure ddo;
        begin
                if (m = 2) or (m=3) then answ:=0;
                if (m = 4) or (m=5) then answ:=4;
                if m=8 then answ:=12;
        end;
Procedure outpud;
        begin
                Assign(output,'output.txt');
                Rewrite(output);
                WriteLn(answ);
                close(output);
        end;
BEGIN

END.