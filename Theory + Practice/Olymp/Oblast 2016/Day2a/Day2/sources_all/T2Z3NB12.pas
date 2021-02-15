//Zhodino gymnazia 1 Novodvorskii Sergei
var f1,f2:text;
        a,b:array[1..10000] of integer;
        i,j,n,s,k,j1,l,p,m,u:longint;
procedure rec(j,l:integer);
begin

        if a[j]<a[l] then begin b[s]:=b[s]+1; rec(l,l+1);  end;
end;
procedure host;
begin
        p:=j1+1;
        while p<=n do
        begin
                rec(j1,p);
                s:=s+1;
                p:=p+1;
        end;

end;

procedure rd;
begin
        assign(f1,'input.txt');
        assign(f2,'output.txt');
        reset(f1);
        rewrite(f2);
        readln(f1,n,k);
        for i:=1 to n do
                read(f1,a[i]);
        j1:=1;
        s:=1;
        for i:=1 to 1000 do
                b[i]:=1;
        if k=1 then
        begin
        host;
        m:=0;
        for i:=1 to s do
                if b[s]>m then m:=b[i];
        writeln(f2,m);
        end
        else writeln(f2,n);
        close(f1);
        close(f2);
end;

begin
        rd;
end.
