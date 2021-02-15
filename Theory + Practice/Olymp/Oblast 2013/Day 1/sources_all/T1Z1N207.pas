program T1Z1N207;
var
        n,i,j:integer;
        t:longint;
        b:array[1..2000,1..10] of char;
        c:array[1..2000] of longint;
        y:array[1..20,0..59,0..59] of byte;
        fd:array[1..2000] of integer;
        last1,last2:string;
        d:string;
        i1:integer;
procedure qs_hh(l,r,m:longint);
var i,j:longint;
    x,z:string;
begin
    i:=l;
    j:=r;
    x:=b[l+random(r-l)+1];
    while (b[i][m]+b[i][m+1]<x[m]+x[m+1]) and (i<=r) do inc(i);
    while (b[j][m]+b[j][m+1]>x[m]+x[m+1]) and (j>=l) do dec(j);
    repeat
        if (i<=j) then begin
            if (b[i][m]+b[i][m+1]<>b[j][m]+b[j][m+1]) then begin
                 z:=b[i];
                 b[i]:=b[j];
                 b[j]:=z;
            end;
            inc(i);
            dec(j);
        end;
    until i>j;
    if (l<j) then qs_hh(l,j,m);
    if (i<r) then qs_hh(i,r,m);
end;
begin
    assign(input,'input.txt');
    reset(input);
    assign(output,'output.txt');
    rewrite(output);
    readln(n,t);
    for i:=1 to n*2 do begin
       read(d);
       c[i]:=length(d);
       for j:=1 to c[i] do begin
           b[i][j]:=d[j];
       end;
       readln;
    end;
    qs_hh(1,i,7);
    last1:='';last2:='';
    for i:=1 to 2*n do begin
        if last1='' then begin
            last1:=b[i][1]+b[i][2];
            i1:=1;
        end else begin
            last2:=b[i][1]+b[i][2];
            if (last1<>last2) then begin
                qs_hh(i1,i,4);
                i1:=i;
                last1:=last2;
            end;
        end;
    end;
    if i1=1 then begin
       qs_hh(1,i,4);
    end;
    qs_hh(1,i,1);
    j:=1;
    for i:=1 to n*2 do begin
        if (j=2) then begin
            j:=0;
            write(b[i][1]);
            write(b[i][2]);
            write(b[i][3]);
            write(b[i][4]);
            write(b[i][5]);
            write(b[i][6]);
            write(b[i][7]);
            write(b[i][8]);
            writeln;
        end else begin
            write(b[i][1]);
            write(b[i][2]);
            write(b[i][3]);
            write(b[i][4]);
            write(b[i][5]);
            write(b[i][6]);
            write(b[i][7]);
            write(b[i][8]);
            write('-');
        end;
        inc(j);
      //  writeln(b[i]);
    end;
   // if (b[1][4]+b[1][5]<b[2][4]+b[2][5])  then writeln('NO', b[1][4]+b[1][5],'<',b[2][4]+b[2][5]);
    close(input);
    close(output);
end.
