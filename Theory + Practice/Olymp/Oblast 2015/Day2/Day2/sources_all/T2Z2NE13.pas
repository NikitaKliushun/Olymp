{Михайлов Даниил, Жодино, 10кл, з2}
var a:array[1..10000]of int64;
    d,l1,sc,d1:int64;
    f1,f2:text;
    fl:boolean;
    i,l:int64;
procedure chit;
begin
        assign(f1,'input.txt');
        assign(f2,'output.txt');
        reset(f1);
        rewrite(f2);
        read(f1,d);

end;
procedure endi;
begin
        close(f1);
        close(f2);
end;
procedure kub;
begin
l:=1;
sc:=0;
fl:=true;
        while fl do begin
                inc(l);
                if (d mod l=0)and(l*l*l mod d=0) then begin
                sc:=l*l*l div d;
                if sc>0 then fl:=false;
                end;
                end;
end;
begin
chit;
kub;
write(f2,sc);
endi;
end.
