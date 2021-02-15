var f1,f2:text;
        i,n,j,m:integer;
        x,y,z:array[1..10000] of integer;
        k:array[1..10000] of byte;
        f:byte;
begin
        assign(f1,'input.txt');
        reset(f1);
        assign(f2,'output.txt');
        rewrite(f2);
        readln(f1,n);
        for i:=1 to n-1 do
                readln(f1,x[i],y[i],z[i]);
        for i:=1 to n-1 do
                for j:=i to n-1 do
                        if z[i]<z[j] then
                                        begin
                                        m:=z[i];
                                        z[i]:=z[j];
                                        z[j]:=m;
                                        m:=x[i];
                                        x[i]:=x[j];
                                        x[j]:=m;
                                        end;
        for i:=1 to n do
                k[i]:=0;
        i:=1;
        f:=0;
        while f<>1 do
        begin
                k[x[i]]:=1;
                i:=i+1;
                for j:=1 to n-1 do
                        if k[j]=1 then f:=1;
        end;
        writeln(f2,z[i]);

        close(f1);
        close(f2);
end.
