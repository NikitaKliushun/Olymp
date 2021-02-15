Var
 x,prevX,i,N,MaxL,L : Longint;

Begin
        ReadLn(N);
        Read(prevX);
        MaxL:= 0; L:= 0;
        for i:=1 to N do
        begin
                Read(x);
                if x mod prevX = 0 then Inc(L)
                                   else begin
                                            if L > MaxL then MaxL:=L;
                                            L:=0;
                                        end;
               prevX:=x;
        end;
        Write(MaxL+1);
End.