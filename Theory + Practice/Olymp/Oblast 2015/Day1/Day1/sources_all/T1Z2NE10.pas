{Щербинин Сергей Михайлович, Борисовский район, аг. Лошница, 11 класс, задача 1}
var i,kol,a,b,maxr,maxc,vsi:longint;
    f:text;
begin
     assign(f,'input.txt'); reset(f); read(f,a,b); close(f);
     if a>b then maxr:=b else maxr:=a; maxc:=maxr*2;
     if a<>b then inc(maxc); kol:=0;
     for i:=1 to round(maxr/2) do begin
                         vsi:=round(maxc div i);
                         if vsi-i+1>0 then inc(kol,vsi-i+1);
                         end;
     assign(f,'output.txt'); rewrite(f); write(f,kol); close(f);
end.
