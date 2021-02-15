//Zhodino gymnazia 1 Novodvorskii Sergei
var a:array[1..10,1..10] of char;
        f1,f2:text;
                i,j,n:longint;
                q,w,f,u:integer;
                b,c:array[1..100000] of integer;
                m,h:char;


procedure prov;
begin
         u:=0;
         if (b[i]>1)and(a[b[i]-1,c[i]]='#') then u:=1;
         if (c[i]>1)and(a[b[i],c[i]-1]='#') then u:=1;
         if (b[i]<10)and(a[b[i]+1,c[i]]='#') then u:=1;
         if (c[i]<10)and(a[b[i],c[i]+1]='#') then u:=1;
         if u=1 then writeln(f2,'HIT')
                else
                begin
                        f:=1;
                        for q:=1 to 10 do
                        for w:=1 to 10 do
                                if a[q,w]='#' then f:=0;
                        if f=0 then writeln(f2,'DEAD')
                                else writeln(f2,'GAME OVER');
                end;
end;

procedure chk;
begin
        if m='a' then c[i]:=1;
        if m='b' then c[i]:=2;
        if m='c' then c[i]:=3;
        if m='d' then c[i]:=4;
        if m='e' then c[i]:=5;
        if m='f' then c[i]:=6;
        if m='g' then c[i]:=7;
        if m='h' then c[i]:=8;
        if m='l' then c[i]:=9;
        if m='k' then c[i]:=10;
end;

procedure igra;
begin
        i:=1;
        f:=0;
        while (f=0)and(i<=n) do
        begin
                if a[b[i],c[i]]='#' then
                                        begin
                                                a[b[i],c[i]]:='.';
                                                prov;
                                        end
                                    else writeln(f2,'MISS');
                i:=i+1;
        end;
end;

procedure rd;
begin
        assign(f1,'input.txt');
        reset(f1);
        assign(f2,'output.txt');
        rewrite(f2);
        for i:=1 to 10 do
        begin
                for j:=1 to 10 do
                        read(f1,a[i,j]);
                readln(f1);
        end;
        readln(f1,n);
        for i:=1 to n do
        begin
                readln(f1,b[i],h,m);
                chk;
        end;

        igra;
        close(f1);
        close(f2);
end;

begin
        rd;
end.
