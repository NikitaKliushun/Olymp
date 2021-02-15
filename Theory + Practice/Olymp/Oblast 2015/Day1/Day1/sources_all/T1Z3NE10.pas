{Щербинин Сергей Михайлович, Борисовский район, аг. Лошница, 11 класс, задача 1}
var n,m,i,maxk,maxt,i2,vsi,a,b,vsi1,c,i3,kol,w:longint;
    k,t:array[1..100000]of longint;
    vss:array[1..100000]of string;
    f:text;
begin
     assign(f,'input.txt'); reset(f); readln(f,n,m); maxt:=-1; maxk:=-1;
     for i:=1 to n do begin read(f,k[i]); inc(maxk,k[i]); end;
     for i:=1 to m do begin read(f,t[i]); inc(maxt,t[i]); end; close(f);
     if n>m then vsi:=n else vsi:=m;
     for i:=1 to vsi do begin
                        if i<=n then 
                        for i2:=1 to k[i] do begin
                                               if i mod 2<>0 then begin
                                               vsi1:=1;
                                               for i3:=1 to maxk do vsi1:=vsi1*2;
                                               inc(a,vsi1); dec(maxk);
                                               end else dec(maxk);
                                               end;
                        if i<=m then 
                        for i2:=1 to t[i] do begin
                                               if i mod 2<>0 then begin
                                               vsi1:=1;
                                               for i3:=1 to maxt do vsi1:=vsi1*2;
                                               inc(b,vsi1); dec(maxt);
                                               end else dec(maxt);
                                               end;
                        end;
     assign(f,'output.txt'); rewrite(f);
     c:=a xor b; kol:=1;
     while c>1 do begin
                  if length(vss[kol])=255 then inc(kol);
                  if c mod 2=0 then begin
                                    vss[kol]:='0'+vss[kol];
                                    c:=round(c/2);
                                    end else
                                    begin 
                                    vss[kol]:='1'+vss[kol];
                                    dec(c);
                                    c:=round(c/2);
                                    end;
                  end; if length(vss[kol])=255 then inc(kol); vss[kol]:='1'+vss[kol];
     vsi:=1; vsi1:=0;
     for w:=1 to kol do
     for i:=1 to length(vss[w]) do begin
     if ((vss[w][i]='1') and (vsi=1)) or ((vss[w][i]='0') and (vsi=0)) then inc(vsi1);
     if (vss[w][i]='0') and (vsi=1) then begin
                                      write(f,vsi1,' '); vsi:=0; vsi1:=1;
                                      end;
     if (vss[w][i]='1') and (vsi=0) then begin
                                      write(f,vsi1,' '); vsi:=1; vsi1:=1;
                                      end;
                                end;
     write(f,vsi1); close(f);
end.