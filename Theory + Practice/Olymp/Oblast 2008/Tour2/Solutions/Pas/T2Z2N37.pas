{$ S-,Q-,R-,I-}
{��⪥��� ����਩, �.��१���, ��� 2, ����� 2}
Program task;
Var
        n,k,otv :       longint;
        s       :       string;
Procedure Inpud;
        Begin
                Assign(input,'input.txt');
                Reset(input);
                ReadLn(n,k);
                ReadLn(s);
                close(input);
        end;
Procedure DDo;
        Begin
                otv:=length(s)*k+3;
        end;
Procedure outpud;
        Begin
                Assign(output,'output.txt');
                ReWrite(output);
                WriteLn(otv);
                Close(output);
        end;
BEGIN
                inpud;
                ddo;
                outpud;
END.