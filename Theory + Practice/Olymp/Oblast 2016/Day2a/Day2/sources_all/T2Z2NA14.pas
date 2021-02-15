Program T2Z2NA14;
Type
    Pair = record
       h,b:longint;
    End;
Var
    a:array[1..3000,1..3000] of Pair;
    sum:int64;
    temp,m,n,i,j:longint;
    max:int64;
    s:array[0..5000] of longint;
    stop:boolean;

Procedure MatrixGo(i,j:longint; max:int64);
    Var
        add:boolean;
    Begin
        add:=false;
        while (j<=n) AND (not stop) do Begin
            if (a[i,j].h+a[i,j].b>max) then Begin
                inc(s[0]);
                s[s[0]]:=j;
                add:=true;
                //max:=a[i,j].h+a[i,j].b;
                if (s[0] = m) then stop:=true;
                if (i<m) AND (j<n) AND (not stop) then MatrixGO(i+1,j+1, a[i,j].h+a[i,j].b);
            End;
            inc(j);
        End;

        if (s[0] = m) then stop:=true;

        if (j>=n) AND (not stop) then dec(s[0]);
        if (add) AND (not stop) then dec(s[0]);

        {if (i=m) AND (not stop) then Begin
            stop:=true;
            s[0]:=0;
        End;}
    End;

Begin
    assign(input,'input.txt'); reset(input);
    assign(output,'output.txt'); rewrite(output);

        readln(m,n);
        s[0]:=0; stop:=false;

        for i:=1 to m do Begin
            read(temp);
            for j:=1 to n do a[i,j].h:=temp;
        End;

        readln;

        for i:=1 to n do Begin
            read(temp);
            for j:=1 to m do a[j,i].b:=temp;
        End;

        i:=1; j:=1; max:=0;

        MatrixGo(1,1, max);

        if (s[0] <> m) then write(-1) else

            for i:=1 to s[0] do write(s[i],' ');

    close(input); close(output);
End.
