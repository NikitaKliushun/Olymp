var a,n,k:integer;
        f1,f2:text;
begin
        assign(f1,'input.txt');
        reset(f1);
        assign(f2,'output.txt');
        rewrite(f2);

        readln(f1,n,k);
        readln(f1,a);
        case a of
        0:write(f2,1);
        1:write(f2,1);
        2:if k=2 then write(f2,2)
                 else if k>2 then write(f2,4)
                                else write(f2,1);
        3:if k>=2 then write(f2,3)
                        else write(f2,1);
        4:if k=2 then write(f2,2)
                 else if k>=3 then write(f2,4)
                                else write(f2,1);
        5:if k=2 then write(f2,3)
                 else write(f2,1);
        6:if (k=2)or(k=3) then write(f2,2)
                 else if k>=4 then write(f2,3)
                                else write(f2,1);
        7:if k=2 then write(f2,3)
                 else if k>2 then write(f2,4)
                                else write(f2,1);
        8:write(f2,0);
        9:if k=3 then write(f2,2)
                 else if k>=4 then write(f2,3)
                                else write(f2,1);
        end;
        close(f1);
        close(f2);
end.


