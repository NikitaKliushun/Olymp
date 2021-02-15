{$ S-,Q-,R-,I-}
{Буткевич Дмитрий, г.Березино, Тур 2, задача 1}
Program task;
Var
        i,j             :       longint;
        a               :       array[1..100] of longint;
        n,xx,z          :       longint;
        gamer,krupie    :       int64;
Procedure inpud;
        Begin
                Assign(input,'input.txt');
                Reset(input);
                ReadLn(n);
                For i:=1 to n do
                 Read(a[i]);
                Close(input);
        end;
Procedure Sort;
        Begin
                For j:=1 to n-1 do
                 For i:=1 to n-1 do
                  begin
                   If a[i]<a[i+1] then begin
                                        xx:=a[i];
                                        a[i]:=a[i+1];
                                        a[i+1]:=xx;
                                       end;
                  end;
        end;
Procedure ddo;
        Begin
                Sort;
                z:= n div 2;
                For i:=1 to z do
                 gamer:=gamer+a[i];
                For i:=z+1 to n do
                 krupie:=krupie+a[i];
                gamer:=gamer-krupie;
        end;
Procedure outpud;
        begin
                Assign(output,'output.txt');
                Rewrite(output);
                WriteLn(gamer);
                Close(output);
        end;
BEGIN
     Inpud;
     Ddo;
     outpud;
END.
