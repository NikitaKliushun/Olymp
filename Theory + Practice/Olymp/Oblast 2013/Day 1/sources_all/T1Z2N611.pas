{Ярош Георгий, Логойск, Задача 2, Тур 1, N611}
program zzz;

type int = longint;

var a,b,c:int64; i:int;
    n,m:int64;

begin
    assign(input,'input.txt');
    assign(output,'output.txt');
    reset(input);
    rewrite(output);
      readln(a,c);

      b:=0;
      for i:=1 to round(sqrt(c)) do
        begin
            if c mod i = 0 then
                begin
                    n:=i;
                    m:=c div i;

                    if n mod a = 0 then inc(b);
                    if n<>m then if m mod a = 0 then inc(b);

                  //  writeln(n,' ',m,' ',b);
                end;
        end;
      writeln(b);

    close(input);
    close(output);
end.
