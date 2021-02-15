{Ярош Георгий, Логойск, Задача 3, Тур 1, N611}
program zzz;

type int = longint;

var a:array[1..1000,1..1000] of int;
    b:array[1..1000] of int;
    n,m:int; i,j:int; l:int; c:char;
    ans:int64; k:int64;

    function sym(i,j,l:int):boolean;
        var k:int; ans:boolean;
    begin
        for k:=i to l+i-1 do
                b[k-i+1]:=a[k,j];

        ans:=true;
        for k:=1 to l do
                if b[k]<>b[l-k+1] then ans:=false;
        sym:=ans;
    end;

    procedure debug;
        var i,j:int;
    begin
        for i:=1 to n do
                begin
                    for j:=1 to m do
                        write(a[i,j]);
                    writeln;
                end;
    end;

begin
    assign(input,'input.txt');
    assign(output,'output.txt');
    reset(input);
    rewrite(output);
        readln(n,m);
        for i:=1 to n do
           begin
                for j:=1 to m do
                        begin
                            read(c);
                            case c of
                                '1':a[i,j]:=1;
                                '0':a[i,j]:=0;
                            end;
                        end;
                readln;
           end;

        //debug;

        ans:=0;
        for l:=2 to n do
                begin
                    for i:=1 to n-l+1 do
                        begin
                            k:=0;
                            for j:=1 to m do
                                begin
                                   //writeln(i,' ',j,' ',l,' ',k,' ',sym(i,j,l));
                                    if sym(i,j,l) then
                                        begin
                                            inc(k);
                                            inc(ans,k);
                                        end
                                    else k:=0;
                                end;
                        end;
                end;
        writeln(ans);
    close(input);
    close(output);
end.
