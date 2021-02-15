//Zhodino gymnazia 1 Novodvorskii Sergei
var a,c:array[1..2000,1..2000] of integer;
        i,j,m,n,p,y,r,z,o,k,d:longint;
        f1,f2:text;
        b,f,g:array[1..2000] of integer;


procedure psk;
begin
        for j:=1 to m do
        begin
                b[j]:=0;
                f[j]:=0;
        end;
        for i:=1 to n do
        begin
                for j:=1 to m do
                        f[a[i,j]]:=f[a[i,j]]+1;
                for j:=1 to m do
                        if f[a[i,j]]>0 then
                                        begin
                                        b[a[i,j]]:=b[a[i,j]]+1;
                                        f[a[i,j]]:=0;
                                        end;
        end;
        p:=0;
        for j:=1 to m do
                if b[j]=n then p:=1;
        if p=0 then writeln(f2,'-1');
        y:=0;
        for j:=1 to m do
        begin
                r:=a[1,j];
                p:=0;
                for i:=2 to n do
                        if a[i,j]<>r then p:=1;
                if p=0 then y:=1;
        end;
        if y=1 then writeln(f2,'0');



end;

procedure rd;
begin
        assign(f1,'input.txt');
        assign(f2,'output.txt');
        reset(f1);
        rewrite(f2);
        readln(f1,n,m);
        for i:=1 to n do
        begin
                for j:=1 to m do
                        read(f1,a[i,j]);
                readln(f1);
        end;
        psk;
        close(f1);
        close(f2);
end;

begin
        rd;
end.
