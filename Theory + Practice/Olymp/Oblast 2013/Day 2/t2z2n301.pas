program ss;
var d,b:array[1..100] of integer;
    i,j,n,k,f,t,x,q:integer;
    f1,f2:text;
    z:string;
    p:array[1..1000] of string;
begin
        assign(f1,'input.txt');
        reset(f1);
        assign(f2,'output.txt');
        rewrite(f2);
        i:=1;
        while not eof(f1) do
                if i=1 then readln(f1,n,k)
                       else readln(f1,z);
        j:=1;
        for i:=1 to length(z) do
                if z[i]=' ' then j:=j+1
                            else p[j]:=p[j]+z[i];
        for i:=1 to n do
                val(p[i],d[i],q);
        for i:=1 to n do
                b[i]:=i;
        for i:=1 to n-1 do
                for j:=1 to n-1 do
                        if d[j]>d[j+1] then
                                        begin
                                                x:=d[j];
                                                d[j]:=d[j+1];
                                                d[j+1]:=x;
                                                x:=b[j];
                                                b[j]:=b[j+1];
                                                b[j+1]:=x;
                                        end;
        f:=0;
        t:=(n-k) div 2;
        writeln(f2,k);
        i:=1;
        if t>0 then begin for i:=t+1 to n-t do
                                write(f2,b[i],' ') end
                    else
                    while i<=n do
                         begin
                                if (d[n-t]-d[t+2]>d[n-t-1]-d[t+1])and(f=0) then begin n:=n-1; f:=1; end;
                                if (d[n-t]-d[t+2]<d[n-t-1]-d[t+1])and(f=0) then begin i:=i+1; f:=1; end;
                                write(f2,b[i],' ');
                                i:=i+1;
                         end;
    close(f1);
    close(f2);
end.




