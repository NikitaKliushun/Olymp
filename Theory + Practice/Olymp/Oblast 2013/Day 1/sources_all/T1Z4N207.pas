program T1Z4N207;
var a,c:array[1..200000] of longint;
n,m,k,f,x,s,j,jj,i,ii,ss:longint;
begin
        assign(input,'input.txt');
        reset(input);
        assign(output,'output.txt');
        rewrite(output);
        readln(n,m,k);
        for i:=1 to m do begin
            read(a[i]);
        end; readln;
        for i:=1 to n do begin
            read(c[i]);
        end;
        readln;
        readln(f);
        s:=0;
        x:=0;
        i:=0;
        j:=1;
        jj:=1;
        x:=a[1];
        ss:=1;
        while (x<>f) and (ii<=n) do begin
            inc(ii);
            while (j<=m) and (a[j]<>x) do begin
                inc(j);
                if (a[j]=x) then jj:=j;
            end;
            if (x=a[jj]) and (k>=ss) then begin
                inc(s);
                ss:=1;
            end else inc(ss);
            j:=1;
            x:=c[x];
            if x=f then i:=n;
        end;
        writeln(s);
        close(input);
        close(output);
end.
