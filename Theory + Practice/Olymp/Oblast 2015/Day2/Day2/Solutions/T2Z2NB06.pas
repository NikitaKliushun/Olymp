var f1,f2:text;
        i,d:int64;
        s:integer;
begin
        assign(f1,'input.txt');
        reset(f1);
        assign(f2,'output.txt');
        rewrite(f2);

        readln(f1,d);

        i:=1;
        while (i*i*i) mod d<>0 do
        begin
                i:=i+1;
                if (i*i*i) mod d = 0 then write(f2,i*i*i div d);
        end;
        close(f1);
        close(f2);
end.
