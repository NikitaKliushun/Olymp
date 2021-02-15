program ss;
var x,a,p:array[1..100] of integer;
    s,n,k,i,m,y:integer;
    f1,f2:text;
begin
        assign(f1,'input.txt');
        reset(f1);
        assign(f2,'output.txt');
        rewrite(f2);
        y:=1;
        i:=1;
        while not eof(f1) do
                if i=1 then readln(f1,n,k)
                        else
                        begin
                                readln(f1,a[y],p[y]);
                                y:=y+1;
                        end;
        s:=0;
        for i:=1 to n do
                s:=s+a[i];
        i:=1;
        m:=0;
        while s<>k do
        begin
                if s>k then begin a[i]:=a[i]-1; s:=s-1; x[m]:=i; m:=m+1; if a[i]=0 then i:=i+1; end;
                if s<k then begin
                                while (s<>k)and(a[i]<>p[i]) do
                                begin
                                        a[i]:=a[i]+1;
                                        s:=s+1;
                                        m:=m+1;
                                        x[m]:=i;
                                end;
                                if a[i]=p[i] then i:=i+1;
                            end;
        end;
        writeln(f2,m);
        for i:=1 to m do
                writeln(f2,x[i]);
        close(f1);
        close(f2);
end.
