{Ярош Георгий, Логойск, Задача 1, Тур 1, N611}
program zzz;

type int = longint;
     elem = record n:int; c:int; end;

const inf = 10110110;

var a:array[1..1000] of string;
    b:array[1..1000] of elem;
    i,j:int; n,t:int;
    a1,a2:int; h,m,s:int;

    procedure qsort(l,r:int);
        var i,j,m:int; cc:elem;
    begin
        i:=l;
        j:=r;
        m:=b[(L+r) div 2].c;

        repeat
             while b[i].c>m do inc(i);
             while b[j].c<m do dec(j);

             if i<=j then
                begin
                    cc:=b[i];
                    b[i]:=b[j];
                    b[j]:=cc;
                    inc(i);
                    dec(j);
                end;
        until i>j;

        if i<r then qsort(i,r);
        if j>l then qsort(l,j);
    end;

begin
    assign(input,'input.txt');
    assign(output,'output.txt');
    reset(input);
    rewrite(output);
        readln(n,t);
        n:=n*2;

        for i:=1 to n do
                readln(a[i]);

        for i:=1 to n do
                begin
                    val(copy(a[i],1,2),h,j);
                    val(copy(a[i],4,2),m,j);
                    val(copy(a[i],7,2),s,j);
                    j:=h*3600+m*60+s;
                    //writeln(a[i],' ',j,' ',h,' ',m,' ',s);
                    b[i].c:=j;
                    b[i].n:=i;
                end;

        qsort(1,n);

        for i:=1 to n do
           if b[i].c<>-inf then
            for j:=1 to n do
             if b[j].c<>-inf then
               if b[i].c - b[j].c = t then
                begin
                    writeln(a[b[j].n],'-',a[b[i].n]);
                    b[i].c:=-inf;
                    b[j].c:=-inf;
                end;

    close(input);
    close(output);
end.
