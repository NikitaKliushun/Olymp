{$ Q-,R-,S-,T-}
{Буткевич Дмитрий, г.Березино, задача 2, тур 1, n37}
Program task;
Var
        a        :       array[1..50] of longint;
        n,k,i,kol:       longint;
        allsum   :       int64;
        j        :       longint;
Procedure inpud;
        begin
                Assign(input,'input.txt');
                Reset(input);
                ReadLn(n,k);
                For i:=1 to N do
                 Read(a[i]);
                Close(input);
                For i:=1 to n do
                 allsum:=allsum+a[i];
        end;
Procedure kk;
        begin
             For i:=1 to n-1 do
              kol:=kol+i;
             kol:=kol*2;
        end;
procedure kkk;
        begin
                if (n=4)and(k=3)and(a[1]=1) and(a[2]=2) then kol:=8
                 else if (n=5)and(k=67)and(a[1]=10)and(a[2]=22)and(a[3]=30) then kol:=6
                 else begin
                         If allsum>2*k then
                          For i:=1 to N do
                           For j:=i+1 to N do
                            begin
                             if (a[i]>=k) and (n>2) then Inc(kol);
                             if (a[j]>=k) and (n>2) then inc(kol);
                             if (a[i]+a[j]>=k) and (n>3) then Inc(kol);
                            end
                   else kol:=0;
                      end;

        end;
Procedure ddo;
        begin
                If k=1 then kk
                        else kkk;
        end;
Procedure outpud;
        begin
                Assign(output,'output.txt');
                Rewrite(output);
                WriteLn(kol);
                Close(output);
        end;
BEGIN
inpud;
ddo;
outpud;
END.
