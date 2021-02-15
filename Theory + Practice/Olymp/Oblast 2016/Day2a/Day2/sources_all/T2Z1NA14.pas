Program T2Z1NA14;
Var
    d:array[1..100100] of longint;
    m,w,s,b,t,sum,p,_p,i,j,day,week,n:longint;
Begin
    assign(input,'input.txt'); reset(input);
    assign(output,'output.txt'); rewrite(output);
        sum:=0;
        readln(m,w);
        for i:=1 to m do read(d[i]);
        read(s,b,t);

        for i:=1 to m do Begin
            p:=1-s;
                day:=t;
                _p:=p+w*((day-p-1) div w);
                week:=day - _p;
                if (week = b) then inc(sum);
            _p:=p+w*((d[i]-p-1) div w);
            s:=d[i]-_p+1;
            if (s>7) then s:=1;
        End;

        write(sum);

    close(input); close(output);
End.