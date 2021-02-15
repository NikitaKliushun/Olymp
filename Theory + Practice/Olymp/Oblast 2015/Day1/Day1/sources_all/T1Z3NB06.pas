var   f1,f2:text;
        i,n,m,s,f,x,j,l,p,h,d,e,z:longint;
        a,b,k,t,g,o:array[1..10000] of integer;
begin
        assign(f1,'input.txt');
        reset(f1);
        assign(f2,'output.txt');
        rewrite(f2);
        readln(f1,n,m);
        for i:=1 to n do
                 if i=n then readln(f1,a[i])
                        else read(f1,a[i]);
        for i:=1 to m do
                read(f1,b[i]);
        i:=0;
        f:=1;
        x:=1;
        l:=0;
        while l=0  do
        begin
                  i:=i+1;
                  if f=1 then k[i]:=1
                        else k[i]:=0;
                   a[x]:=a[x]-1;
                if (a[x]<=0)and(f=1)and(l=0) then
                                begin
                                x:=x+1;
                                f:=0;
                                if a[x]=0 then l:=1;
                                end;
                if (a[x]<=0)and(f=0)and(l=0) then
                                        begin
                                        x:=x+1;
                                        f:=1;
                                        if a[x]=0 then l:=1;
                                        end;



        end;
        j:=0;
        f:=1;
        x:=1;
        l:=0;
        while l=0  do
        begin
                  j:=j+1;
                  if f=1 then t[j]:=1
                        else t[j]:=0;
                   b[x]:=b[x]-1;
                if (b[x]<=0)and(f=1)and(l=0) then
                                begin
                                x:=x+1;
                                f:=0;
                                if b[x]=0 then l:=1;
                                end;
                if (b[x]<=0)and(f=0)and(l=0) then
                                        begin
                                        x:=x+1;
                                        f:=1;
                                        if b[x]=0 then l:=1;
                                        end;



        end;
        h:=1;
        for p:=1 to i-1 do
             h:=h*2;
        for p:=1 to i do
        begin
                d:=d+k[p]*h;
                h:=h div 2;
        end;
        h:=1;
        for p:=1 to j-1 do
             h:=h*2;
        for p:=1 to j do
        begin
                e:=e+t[p]*h;
                h:=h div 2;
        end;
        z:=d xor e;
        i:=1;
        while z>0 do
        begin
                g[i]:=z mod 2;
                z:=z div 2;
                i:=i+1;
        end;
        i:=i-1;
        x:=1;
        f:=1;
        for j:=i downto 1 do
        begin
                if (f=1)and(g[j]=0) then begin f:=0; x:=x+1; end;
                if (f=0)and(g[j]=1) then begin f:=1; x:=x+1; end;
                o[x]:=o[x]+1;
        end;
        for i:=1 to x do
            if i=x then write(f2,o[i])
                        else write(f2,o[i],' ');
        close(f1);
        close(f2);

end.