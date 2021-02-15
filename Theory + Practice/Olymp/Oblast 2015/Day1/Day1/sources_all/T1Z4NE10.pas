{Щербинин Сергей Михайлович, Борисовский район, аг. Лошница, 11 класс, задача 1}
var n,i,i2,kold,max,vsi,w:longint;
    x,y:array[1..100000]of longint;
    z:array[1..100000]of integer;
    g:array[1..2,1..100000]of longint;
    f:text;
begin
     assign(f,'input.txt'); reset(f); readln(f,n); kold:=n-1;
     for i:=1 to kold do begin readln(f,x[i],y[i],z[i]); end; close(f);
     for i:=1 to kold do begin inc(g[2,x[i]]); if g[2,x[i]]=1 then g[1,x[i]]:=i; end;
     for i:=1 to n do 
     if g[2,i]=1 then begin
                      for i2:=g[1,i] to kold-1 do begin
                                          x[i2]:=x[i2+1];
                                          y[i2]:=y[i2+1];
                                          z[i2]:=z[i2+1];
                                          end;
                      x[kold]:=0; y[kold]:=0; z[kold]:=0; dec(kold);
                      end;
     for i:=1 to 2 do for i2:=1 to 100000 do g[i,i2]:=0;
     for w:=1 to n do begin
                   for i:=1 to kold do if max<z[i] then max:=z[i];
                   for i:=1 to kold do
                   if max=z[i] then begin
                                    max:=0; vsi:=x[i];
                                    x[i]:=0; y[i]:=0; z[i]:=0;
                                    end;
                   for i:=1 to kold do
                   if (x[i]=vsi) and (x[i]>0) then begin inc(g[1,vsi],z[i]); x[i]:=0; y[i]:=0; end;
                   end;
     max:=maxint;
     for i:=1 to n do if (max>g[1,i]) and (g[1,i]<>0) then max:=g[1,i];
     assign(f,'output.txt'); rewrite(f); write(f,max); close(f);
end.