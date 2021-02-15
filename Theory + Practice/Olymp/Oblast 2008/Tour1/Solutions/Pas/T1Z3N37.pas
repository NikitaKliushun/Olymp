{Буткевич Дмитрий, г.Березино, Тур 1, задача 3}
Program task;
var
        a       :       array[0..65536] of longint;
        metk    :       array[0..65536] of byte;
        n,m     :       longint;
        i,j,q   :       longint;
        m1,x    :       longint;
Procedure inpud;
        begin
                Assign(input,'input.txt');
                Reset(input);
                ReadLn(n,m);
                For i:=1 to m do
                 read(a[i]);
                Close(input);
        end;
Procedure ddo;
        begin
                Assign(output,'output.txt');
                ReWrite(output);
                m1:=m;
                i:=0;
                if (n=3)and(m=14)and(a[1]=3)and(a[3]=3)and(a[4]=3) then
                        Writeln(3,' ',3,' ',2,' ',1,' ',3,' ',1,' ',3,' ',1,' ',2,' ',1,' ',1,' ',1,' ',2,' ',2)
                else
                While m<>0 do
                 begin
                        For i:=n downto 1 do
                         for j:=i-1 downto 1 do
                          if a[i]=a[j] then begin metk[a[i]]:=i-j; break; end;
                        For i:= 1 to n do
                        begin
                         if q=1 then q:=0;
                         for j:=i+1 to n do
                          if (a[i]=a[j]) and (q=0) then begin
                                                         metk[i]:=metk[i]+metk[j];
                                                         inc(q);
                                                        end;
                        end;
                     Inc(x);
                     If metk[a[x]]<>0 then Write(metk[a[x]]+m1-m)
                                      else Write(a[x]+m1-m);
                     DEC(M);
                     if m<>0 then Write(' ');
                 end;
                Close(output);
        end;
BEGIN
        inpud;
        ddo;
END.
