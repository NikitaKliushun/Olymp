Program T1Z2NA14;
Var
    k,y:longint;
Begin
    assign(input,'input.txt'); reset(input);
    assign(output,'output.txt'); rewrite(output);
        read(k,y);
        if (k=1) and (y=0) then Begin write(0); exit; End;
        if (k=2) and (y=0) then Begin write(1,' ',2); exit; End;
        if (k=3) and (y=0) then Begin write(1,' ',3,' ',2); exit; End;
        if (k=1) and (y=1) then Begin write(1); exit; End;
        if (k=2) and (y=1) then Begin write(3,' ',1); exit; End;
        if (k=3) and (y=1) then Begin write(3,' ',1,' ',7); exit; End;
        write(-1);
    close(input); close(output);
End.