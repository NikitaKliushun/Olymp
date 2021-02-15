//Zhodino gymnazia 1 Novodvorskii Sergey
var f1,f2:text;
        m,n,i,j,v:integer;
        o,k:longint;
        h,b:array[0..3000] of longint;
procedure sravn;
begin
        o:=h[i]+1000000001;
        v:=0;
        for j:=1 to n do
        begin
                if b[j]>0 then
                if (h[i]+b[j]>k)and(h[i]+b[j]<o) then
                                                begin
                                                        v:=j;
                                                        o:=h[i]+b[j];
                                                end;
        end;
        write(f2,v,' ');
        k:=h[i]+b[v];
        b[v]:=0;
end;

procedure bara;
begin
        k:=0;
        for i:=1 to m do
        begin
                sravn;
                if v=0 then
                        begin
                                rewrite(f2);
                                write(f2,'-1');
                                 exit;
                        end;

        end;

end;

procedure rd;
begin
        assign(f1,'input.txt');
        assign(f2,'output.txt');
        reset(f1);
        rewrite(f2);
        readln(f1,m,n);
        for i:=1 to m do
                read(f1,h[i]);
        readln(f1);
        for i:=1 to n do
                read(f1,b[i]);
        bara;
        close(f1);
        close(f2);
end;

begin
        rd;
end.
