{Щербинин Сергей Михайлович, Борисовский район, аг.Лошница, 11 класс, задача2}
var i,d,kol,kub,t,tkub:longint;
    f:text;
begin
     assign(f,'input.txt'); reset(f); readln(f,d); close(f);
     for i:=1 to round(sqrt(d)) do if i*i*i>=d then begin tkub:=i; break; end;
     kub:=tkub*tkub*tkub; t:=d; kol:=1;
     while true do begin
                   if t=kub then break;
                   if t>kub then begin inc(tkub); kub:=tkub*tkub*tkub; end;
                   inc(t,d);
                   inc(kol);
                   end;
     assign(f,'output.txt'); rewrite(f); write(f,kol); close(f);
end.
