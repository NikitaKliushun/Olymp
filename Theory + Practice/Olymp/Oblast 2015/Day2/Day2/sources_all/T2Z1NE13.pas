{Михайлов Даниил, Жодино, 10, з.1}
var s,t:array[1..100000]of char;
    i,j,l1,l2,min,r:longint;
    f1,f2:text;

procedure chit;
begin
        assign(f1,'input.txt');
        assign(f2,'output.txt');
        reset(f1);
        rewrite(f2);
        l1:=1;
        while not eoln(f1) do begin
                read(f1,s[l1]);
                inc(l1);
                end;
        readln(f1);
        l2:=1;
        while not eoln(f1) do begin
                read(f1,t[l2]);
                inc(l2);
                end;
end;
procedure endi;
begin
        close(f1);
        close(f2);
end;
procedure rif;
var f:boolean;
begin
        l1:=l1-1;
        l2:=l2-1;
        if l1>l2 then min:=l2
               else min:=l1;
        f:=true;
        i:=0;
        while f do begin
                inc(i);
                  if i=min then begin f:=false;i:=0;end;
                if s[l1+1-i]=t[l2+1-i] then inc(r)
                                       else f:=false;

                end;

end;
begin
        chit;
        rif;
        write(f2,r);
        endi;
end.




