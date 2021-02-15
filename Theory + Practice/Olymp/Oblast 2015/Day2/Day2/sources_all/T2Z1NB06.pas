var     f1,f2:text;
        i,j,n,m:integer;
        s,t:array[1..10000] of char;
begin
        assign(f1,'input.txt');
        reset(f1);
        assign(f2,'output.txt');
        rewrite(f2);
                n:=1;
                while not eoln(f1) do
                begin
                        read(f1,s[n]);
                        n:=n+1;
                end;
                readln(f1);
                m:=1;
                while not eoln(f1) do
                begin
                        read(f1,t[m]);
                        m:=m+1;
                end;
        n:=n-1;
        m:=m-1;

        i:=n;
        j:=m;
        while s[i]=t[j] do
        begin
                i:=i-1;
                j:=j-1;
        end;

        write(f2,n-i);

        close(f1);
        close(f2);
end.
