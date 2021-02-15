{Щербинин Сергей Михайлович, Борисовский район, аг. Лошница, 11 класс, задача 1}
var n,k,i,kol,i2:longint;
    koltyp:byte;
    a:array[1..100000]of byte;
    typ:array[1..100]of longint;
    f:text;
begin
     assign(f,'input.txt'); reset(f); readln(f,n,k); koltyp:=0; kol:=0;
     for i:=1 to n do begin read(f,a[i]); 
     inc(typ[a[i]]); 
     if koltyp<a[i] then 
     koltyp:=a[i]; end; close(f);
     for i:=1 to koltyp do begin
                           typ[i]:=round(typ[i] div k);
                           if typ[i]>0 then inc(kol,typ[i]);
                           end;
     assign(f,'output.txt'); rewrite(f); write(f,kol); if kol>0 then writeln(f);
     for i:=1 to koltyp do if typ[i]>0 then begin 
                                            for i2:=1 to typ[i] do begin write(f,i); if i2<typ[i] then write(f,' '); dec(kol); end;
                                            if kol>0 then write(f,' ');
                                            end;
     close(f);
end.