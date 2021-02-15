program t2z4n207;
const ax:array[1..4] of smallint=(-1,0,1,-1);
      ay:array[1..4] of smallint=(-1,-1,-1,0);
var i,j,n,m,k,ck:longint;
s:array[1..500,1..500] of char;
ak:array[1..10000] of longint;
c,ok,coo,de,i1,j1,a:longint;
km:array[1..500,1..500] of char;
begin
    assign(input,'4/input1.txt');

    reset(input);
    assign(output,'4/output1.txt');
    rewrite(output);
    readln(n,m,k);
   // readln;
    for i:=1 to k do begin
        read(ak[i]);
        ak[i]:=ak[i]*2;
    end;
    c:=1;
    for i:=1 to 2*m+1 do begin
        for j:=1 to 2*n+1 do begin
            {if (s[i][j]<>'#') then begin
            if (i=1) or (i=2*m+1) then s[i][j]:='#' else begin
                if (j=1) or (j=2*n+1) then s[i][j]:='#' else begin
                    if (i mod 2)=0 then s[i][j]:='.' else begin
                        s[i][j]:=' ';
                    end;
                    if (j mod 2)=1 then begin
                        s[i][j]:=' ';
                    end;
                end;
            end;
            end;}
            s[i][j]:='#';
        end;
    end;
    c:=0;
    ok:=1;
    ck:=1;
    for i:=2 to 2*m do begin
        for j:=2 to 2*n do begin
            coo:=0;
            for a:=1 to 4 do begin
                if (s[i+ax[a]][j+ay[a]]='#') then begin
                  inc(coo);
                end;
            end;
            inc(ck);
            if (coo=4) and (ck>1) then begin
            inc(c);
            if (i mod 2=0) and (j mod 2=0) then km[i][j]:='.' else km[i][j]:='-';
           // writeln('c=',c,' ak[ok]=',ak[ok],' ok=',ok);
            if c=ak[ok] then begin
                for i1:=2 to 2*m do begin
                    for j1:=2 to 2*n do begin
                        if km[i1][j1]='-' then begin
                            s[i1][j1]:=' ';
                        end;
                        if km[i1][j1]='.' then begin
                            s[i1][j1]:='.';
                        end;
                        km[i1][j1]:='=';
                    end;
                end;
                c:=0;
                inc(ok);
                ck:=0;
            end;
            end;
        end;
    end;
    for i:=1 to 2*m+1 do begin
        for j:=1 to 2*n+1 do begin
            write(s[i][j]);
        end;
        writeln;
    end;
    close(input);
    close(output);
end.
