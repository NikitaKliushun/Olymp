{Щербинин Сергей Михайлович, Борисовский район, аг.Лошница, 11 класс, задача1}
var s,t:array[1..400]of string;
    i,kols,kolt,kol,indt,indt1,i2:longint;
    vsss,vsst:string;
    q:byte;
    f:text;
begin
     assign(f,'input.txt'); reset(f);
     for i:=1 to 400 do begin read(f,s[i]); if s[i]='' then begin kols:=i-1; break; end; end;
     readln(f);
     for i:=1 to 400 do begin read(f,t[i]); if t[i]='' then begin kolt:=i-1; break; end; end;
     close(f);
     assign(f,'output.txt'); rewrite(f);
     indt:=kolt; indt1:=length(t[kolt]); kol:=0; q:=1;
     for i:=kols downto 1 do begin
     if q=1 then
     for i2:=length(s[i]) downto 1 do begin
     vsss:=s[i][i2];
     vsst:=t[indt][indt1];
     if vsss=vsst then inc(kol) else q:=0;
     if q=0 then break;
     dec(indt1); if indt1=0 then begin indt1:=255; dec(indt); if indt=0 then q:=0; end;
                                      end;
     if q=0 then break;
                             end;
     write(f,kol);
     close(f);
end.