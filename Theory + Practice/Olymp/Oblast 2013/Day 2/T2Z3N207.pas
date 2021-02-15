program t2z3n207;
var a:array[1..10000] of integer;
n,m,sum,i:longint;
x,max:integer;
begin
    assign(input,'input.txt');
    reset(input);
    assign(output,'output.txt');
    rewrite(output);
    readln(n,m);
    max:=1;
    sum:=0;
    for i:=1 to m do begin
        read(x);
        inc(a[x]);
        if max<x then max:=x;
        read(x);
        inc(a[x]);
        if max<x then max:=x;
        readln;
    end;
    max:=max div 2;
    for i:=1 to n do begin
        if a[i]<max then sum:=sum+max-a[i];
    end;
    sum:=sum div 2;
    writeln(sum);
    close(input);
    close(output);
end.
