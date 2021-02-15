{Ярош Георгий, Логойск, Задача 4, Тур 1, N611}
program zzz;

type int = longint;

var a:array[1..200000] of int;
    c:array[1..200000] of int;
    k:array[1..200000] of int;
    n,m,km:int; s:int; f:int;
    ans:int; i,j:int;

    procedure dfs(v:int);
                var i:int;
        begin
            i:=v;
           // writeln(i);
            while (i<>f) do
                begin
                    if k[i] = 0 then break;
                    dec(k[i]);
                    i:=a[i];
                 //   writeln(i);
                    if i = f then break;
                end;
            if i = f then inc(ans);
           // writeln;
        end;
begin
    assign(input,'input.txt');
    assign(output,'output.txt');
    reset(input);
    rewrite(output);
      readln(n,m,km);

      for i:=1 to n do
        k[i]:=km;

      for i:=1 to m do
        begin
            read(s);
            c[s]:=1;
        end;

      for i:=1 to n do
        read(a[i]);

      readln(f);

      for i:=1 to n do
        if c[i] = 1 then dfs(i);


      writeln(ans);

    close(input);
    close(output);
end.
