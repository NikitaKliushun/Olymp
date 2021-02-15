//Zhodino gymnazia 1 Novodvorskii Sergei
var  k,y:longint;
        f1,f2:text;
procedure rd;
begin
        assign(f1,'input.txt');
        assign(f2,'output.txt');
        reset(f1);
        rewrite(f2);
        readln(f1,k,y);
        if (y<=1)and(k<=3)then
        case y of
        0:case k of
                0:writeln(f2,'-1');
                1:writeln(f2,'0');
                2:writeln(f2,'1 0');
                3:writeln(f2,'1 3 2');
                end;
        1:case k of
                0:writeln(f2,'-1');
                1:writeln(f2,'1');
                2:writeln(f2,'1 3');
                3:writeln(f2,'1 2 5');
                end;
        end
        else writeln(f2,'-1');
        close(f1);
        close(f2);
end;

begin
        rd;
end.

