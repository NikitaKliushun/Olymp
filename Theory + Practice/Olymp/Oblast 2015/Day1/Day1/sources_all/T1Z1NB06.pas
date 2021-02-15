var f1,f2:text;
        n,k,i,m,q,u,d:longint;
        a:array[1..10000] of integer;
        b:array[1..101] of integer;
begin
        assign(f1,'input.txt');
        reset(f1);
        assign(f2,'output.txt');
        rewrite(f2);
        readln(f1,n,k);
        u:=0;
        for i:=1 to n do
        begin
                read(f1,a[i]);
                if a[i]>u then u:=a[i];
        end;
        for i:=1 to u do
                b[i]:=0;
        for i:=1 to n do
        begin
                q:=a[i];
                b[q]:=b[q]+1;
        end;
        m:=0;
        for i:=1 to u do
                m:=m+b[i] div k;
        writeln(f2,m);
        if m>=1 then
        begin
        i:=1;
        d:=1;
        while i<=u do
        begin
                if b[i] div k>1 then
                                begin
                                        b[i]:=b[i]-k;
                                        if d=m then write(f2,i)
                                                else write(f2,i,' ');
                                        d:=d+1;
                                end
                                else
                                if b[i] div k=1 then
                                                begin
                                                        if d=m then write(f2,i)
                                                                  else write(f2,i,' ');
                                                        i:=i+1;
                                                        d:=d+1;
                                                end
                                                else    i:=i+1;
        end;
        end;


        close(f1);
        close(f2);
end.
