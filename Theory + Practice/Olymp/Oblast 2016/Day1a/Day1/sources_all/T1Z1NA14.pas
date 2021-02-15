{Gadalov Vladislav. Tur 1. Zadacha 1.}
Program T1Z1NA14;

Const
    MaxQueue = 1000;
    n = 10;
    dx:array[1..4] of shortint = (-1,0,1,0);
    dy:array[1..4] of shortint = (0,1,0,-1);
Type
    Pair = Record
        x:longint;
        y:longint;
    End;
    MyQueue = array[1..MaxQueue] of Pair;

Var
    q:MyQueue;
    a:array[1..10,1..10] of longint;
    first,free,cn,step,i,j,x,y:longint;
    crash:array[1..100] of Pair;
    k:array[1..500] of longint;

Procedure InitMatrix;
    Var
        c:char;
        i,j:longint;
    Begin
        for i:=1 to n do Begin
            for j:=1 to n do Begin
                read(c);
                if (c = '.') then a[i,j]:=0 else a[i,j]:=-1;
            End;
            Readln;
        End;
    End;

Function ToInt(c:char):longint;
    Begin
        if (c = 'a') then Begin ToInt:=1; Exit; End;
        if (c = 'b') then Begin ToInt:=2; Exit; End;
        if (c = 'c') then Begin ToInt:=3; Exit; End;
        if (c = 'd') then Begin ToInt:=4; Exit; End;
        if (c = 'e') then Begin ToInt:=5; Exit; End;
        if (c = 'f') then Begin ToInt:=6; Exit; End;
        if (c = 'g') then Begin ToInt:=7; Exit; End;
        if (c = 'h') then Begin ToInt:=8; Exit; End;
        if (c = 'i') then Begin ToInt:=9; Exit; End;
        if (c = 'k') then Begin ToInt:=10; Exit; End;
    End;

Procedure InitCrash;
    Var
        x,i:longint;
        c:char;
    Begin
        Readln(cn);
        for i:=1 to cn do Begin
            Read(x); Read(c); Read(c); Readln;
            crash[i].x:=x;
            crash[i].y:=ToInt(c);
        End;
    End;

Procedure InitQueue;
    Begin
        first:=1;
        free:=1;
    End;

Procedure InsertQueue(x,y:longint);
    Begin
        q[free].x:=x;
        q[free].y:=y;
        inc(free);
        if (free>MaxQueue) then free:=1;
    End;

Procedure RemoveQueue(var x,y:longint);
    Begin
        x:=q[first].x;
        y:=q[first].y;
        inc(first);
        if (first>MaxQueue) then first:=1;
    End;

Function EmptyQueue:boolean;
    Begin
        if (first<>free) then EmptyQueue:=false else EmptyQueue:=true;
    End;

Procedure BFS(x,y,step:longint);
    Var
        i,_x,_y:longint;
    Begin
        InitQueue;
        a[x,y]:=step;
        inc(k[step]);
        InsertQueue(x,y);
        while (not EmptyQueue) do Begin
            RemoveQueue(x,y);
            for i:=1 to 4 do Begin
                _x:=x+dx[i];
                _y:=y+dy[i];
                if (_x<1) OR (_x>n) then continue;
                if (_y<1) OR (_y>n) then continue;
                if (a[_x,_y] = -1) then Begin
                    InsertQueue(_x,_y);
                    a[_x,_y]:=step;
                    inc(k[step]);
                End;
            End;
        End;
    End;

Begin
    assign(input,'input.txt'); reset(input);
    assign(output,'output.txt'); rewrite(output);

        InitMatrix;
        InitCrash;
        step:=0;
        for i:=1 to 500 do k[i]:=0;

        for i:=1 to n do Begin
            for j:=1 to n do Begin
                if (a[i,j] = -1) then Begin
                    inc(step);
                    BFS(i,j,step);
                End;
            End;
        End;

        for i:=1 to cn do Begin
            x:=crash[i].x; y:=crash[i].y;
            if (a[x,y] = 0) then writeln('MISS');

            if (a[x,y] <> 0) then Begin
                dec(k[a[x,y]]);
                if (k[a[x,y]] = 0) then Begin
                    dec(step);
                    If (step = 0) then Begin
                        writeln('GAME OVER');
                        break;
                    End else writeln('DEAD');
                End else
                    writeln('HIT');
                a[x,y]:=0;
            End;


        End;

    close(input); close(output);
End.