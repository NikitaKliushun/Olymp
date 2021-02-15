program ss;
var n,m,j,i,w,f,z,e,l:integer;
    x,y:array[1..100] of integer;
    f1,f2:text;
begin
        assign(f1,'t1.txt');
        reset(f1);
        assign(f2,'t2.txt');
        rewrite(f2);
        l:=1;
        i:=1;
        while not eof(f1) do
        begin
                if i=1 then readln(f1,n,m)
                        else
                        begin
                                readln(f1,x[l],y[l]);
                                l:=l+1;
                        end;
                i:=i+1;
        end;
        i:=3;
        e:=3;
        z:=1;
        writeln(f2,n);
        while i<=n do
        begin
                e:=e+z;
                z:=z+1;
        end;
        writeln(f2,e-m);
        for i:=1 to n do
                for j:=1 to n div 2 do
                        if (i+j) mod 2<>0 then
                                          begin
                                                f:=0;
                                                for w:=1 to n do
                                                if (i*10+j=x[w]*10+y[w])or(j*10+i=x[w]*10+y[w]) then f:=1;
                                                if f=0 then writeln(f2,i,' ',j:3);
                                          end;
        close(f1);
        close(f2);
end.
