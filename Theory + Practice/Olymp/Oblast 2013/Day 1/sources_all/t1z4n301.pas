program ss;
var m,n,k,f:integer;
    b,c:array[0..100] of integer;
    i,j:integer;
    x,z:string;
    f1,f2:text;
    a:array[1..100] of string;
    begin
        assign(f1,'t1.txt');
        reset(f1);
        assign(f2,'t2.txt');
        rewrite(f2);
        i:=0;
        while not eof(f1) do
        begin
                if i=1 then readln(f1,m,n,k);
                if i=2 then readln(f1,z);
                if i=3 then readln(f1,x);
                if i=4 then readln(f1,f);
                i:=i+1;
        end;
        j:=1;
        for i:=1 to length(z) do
                if z[i]=' ' then j:=j+1
                            else a[j]:=a[j+1];
        for i:=1 to m do
                val(a[i],b[i],j);
        for i:=1 to length(x) do
                if x[i]=' ' then j:=j+1
                            else a[j]:=a[j+1];
        for i:=1 to n do
                val(a[i],c[i],j);
        k:=1;
        for i:=1 to m do
            if c[b[i]]=f then k:=k+1;
        writeln(F2,k);
        close(f1);
        close(f2);
end.
