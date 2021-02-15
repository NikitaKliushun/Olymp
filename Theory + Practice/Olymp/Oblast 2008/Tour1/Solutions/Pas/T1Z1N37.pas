{Буткевич Дмитрий, г.Березино, задача 1, тур 1}
Program task;
Var
        K       :       longint;
        DL,SH   :       longint;
        ost     :       longint;
Procedure inpud;
        begin
                Assign(input,'input.txt');
                Reset(input);
                Readln(k);
                Close(input);
        end;
Procedure ddo;
        begin
                DL:=Trunc(Sqrt(k));
                SH:=DL;
                ost:=k-Sqr(dl);
                 While (ost>=DL) or (ost>=SH) do
                  begin
                   If DL>SH then begin inc(sh); ost:=ost-DL; end
                        else begin inc(dl); ost:=ost-SH; end;
                  end;
        end;
Procedure outpud;
        begin
                Assign(output,'output.txt');
                ReWrite(output);
                WriteLn(SH,' ',DL);
                Close(output);
        end;
BEGIN
        inpud;
        ddo;
        outpud;
END.
