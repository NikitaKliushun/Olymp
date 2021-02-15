{Михайлов Даниил Дмитриевич, Жодино, 10 класс, 1 задача}
var
        N,K,i,x,y,z,max,j:integer;
        b:array[1..100]of integer;
        f1,f2:text;
        s,s1:string;
procedure chit;
begin
        assign(f1,'input.txt');
        assign(f2,'output.txt');
        reset(f1);
        rewrite(f2);
end;
procedure endi;
begin
        close(f1);
        close(f2);
end;
procedure zap;
begin



end;
procedure poisk;
begin
        for i:=1 to max do
        if b[i]<>0 then begin
                x:=x+(b[i] div K);
                b[i]:=b[i] div K;end;

end;
procedure konf;
begin
        for i:=1 to max do
                if b[i]<> 0 then for j:=1 to b[i] do begin
                                                  str(i,s1);
                                                  s:=s+s1+' ';
                                                  end;
delete(s,length(s),1);
writeln(f2,s);
end;
begin
chit;
readln(f1,N,K);
max:=0;
 while not eoln(f1) do begin
                read(f1,z);
                inc(b[z]);
                if max<z then max:=z;
                end;
poisk;
writeln(f2,x);
konf;
endi;
end.


















