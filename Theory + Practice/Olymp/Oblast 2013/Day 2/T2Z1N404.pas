var
     a,b,d:array [1..20000] of Longint;
     c:array [1..20000] of Longint;
     Sum,Z,M,i,K,N,Ans,j,Q:Longint;
begin
     Assign(Input,'input.txt');
     Reset(Input);
     Assign(Output,'output.txt');
     ReWrite(Output);
     Readln(N,K);
     for i:=1 to N do
begin
     Readln(a[i],b[i]);
     Sum:=Sum+a[i];
     d[i]:=i;
 end;
     for i:=1 to N-1 do
     for j:=i+1 to N do
     if b[i]>b[j] then begin
                            M:=b[i];
                            b[i]:=b[j];
                            b[j]:=M;
                            Z:=a[i];
                            a[i]:=a[j];
                            a[j]:=Z;
                            Q:=d[i];
                            d[i]:=d[j];
                            d[j]:=Q;
                        end;
     if Sum>K then begin
                        while True do
                   begin
                        for i:=N downto 1 do
                   begin
                        if a[i]>0 then begin
                                            Inc(Ans);
                                            Dec(Sum);
                                            c[Ans]:=-1*d[i];
                                            Dec(a[i]);
                                       end;
                        if Sum=K then Break;
                    end;
                        if Sum=K then Break;
                    end;
                        Writeln(Ans);
                        for i:=1 to Ans do
                        Writeln(c[i]);
                    end
              else if Sum=K then Writeln('0')
              else begin
                        while True do
                   begin
                        for i:=1 to N do
                   begin
                        if a[i]<b[i] then begin
                                               Inc(Ans);
                                               c[Ans]:=d[i];
                                               Inc(a[i]);
                                               Inc(Sum);
                                           end;
                        if Sum=K then Break;
                    end;
                        if Sum=K then Break;
                    end;
                        Writeln(Ans);
                        for i:=1 to Ans do
                        Writeln(c[i]);
                    end;
     Close(Input);
     Close(Output);
 end.


