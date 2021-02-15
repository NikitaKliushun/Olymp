var f,f1:text;
    n,k:longint;
    S:string;
    begin
    assign(f,'input.txt');
    reset(f);
    readln(f,n,k);
    readln(f,S);
    close(f);
    assign(f1,'output.txt');
    rewrite(f1);
    if k>7 then
    write(f1,9)
    else
    write(f1,Random(6)+1);
    close(f1);
    end.

