program t2z1n207;
var n:byte;
k,i:integer;
a,p:array[1..100] of integer;
kop,capa,ks,min:integer;
begin
    assign(input,'input.txt');
    reset(input);
    assign(output,'output.txt');
    rewrite(output);
    readln(n,k);
    capa:=0;
    for i:=1 to n do begin
        read(a[i]);
        read(p[i]);
        capa:=capa+a[i];
        readln;
    end;
    writeln(k);
    kop:=k;
    i:=1;
    min:=1;
    while (((kop<>0) and (capa<k)) or (capa>k)) and (ks<=k) do begin
        if (p[i]>=a[i]+1) and (capa<k) then begin
            inc(a[i]);
            dec(kop);
            writeln(i);
            inc(ks);
            if (a[i]=p[i]) then min:=i;
        end;
        if (capa>k) then begin
            if (a[i]>0) then begin
                dec(capa);
                dec(a[i]);
                writeln(-1*i);
            end;
            inc(ks);
        end;
        if (i=n) then i:=min else inc(i);
    end;
    close(input);
    close(output);
end.
