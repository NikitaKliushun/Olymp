var f,f1:text;
    S,S1:ansistring;
    i,j,r:longint;
    begin
    assign(f,'input.txt');
    reset(f);
    readln(f,S);
    readln(f,S1);
    close(f);
    i:=length(S);
    j:=length(S1);
    r:=0;
    while (S[i]=S1[j]) and (i>0) and (j>0) do
        begin
        inc(r);
        dec(i);
        dec(j);
        end;
    assign(f1,'output.txt');
    rewrite(f1);
    write(f1,r);
    close(f1);
    end.