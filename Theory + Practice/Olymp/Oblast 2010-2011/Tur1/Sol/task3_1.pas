{Q-,R-,S-,I-}
{T1Z3N12, Буткевич Дмитрий, 3 задача, 1 тур}
Program task;
Var
        a                             :                       array[1..1000,1..1000] of int64;
        x,y,z,maxx                    :                       int64;
        i,n,k,j                       :                       longint;
Procedure inpud;
        begin
                Assign(input,'input.txt');
                ReSet(input);
                 ReadLn(n);
                  For i:=1 to n-1 do
                    begin
                        readLn(x,y,z);
                        a[x,y]:=z;
                        a[y,x]:=z;
                    end;
                Close(input);
        end;
Procedure sol;
        begin
                For k:=1 to n do
                For i:=1 to n do
                 For j:=1 to n do
                  begin
                   if (i<>j)and(a[i,j]=0)and((a[i,k]>0)and(a[k,j]>0)) then begin
                                                                            a[i,j]:=a[i,k]+a[k,j];
                                                                            if a[i,j]>maxx then maxx:=a[i,j];
                                                                           end;
                  end;
         end;
Procedure outpud;
        begin
                Assign(output,'output.txt');
                ReWrite(output);
                 Writeln(maxx);
                Close(output);
        end;
BEGIN
        inpud;
        sol;
        outpud;
END.
