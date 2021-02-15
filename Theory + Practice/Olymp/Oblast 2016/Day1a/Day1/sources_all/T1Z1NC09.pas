{Lomako Pavel Alexandrovich, Puhovichsky rayon, 11 klass, Z1}
program T1Z1NC09;
type Ar= array[0..11,0..11]of char;
var P:Ar;
        var i,j,k,kol,x,n:byte;
                y,probel:char;
                function number(y:char):byte; begin
                        if y='k' then number:=10
                                else number:=ord(y) - ord('a')+1; end;
                function prov(x,y:byte;P:Ar):boolean; begin
                    if (P[x+1,y]<>'#')and(P[x-1,y]<>'#')and(P[x,y+1]<>'#')and(P[x,y-1]<>'#') then prov:=true
                        else prov:=false;
                end;
BEGIN
assign(input,'input.txt');
assign(output,'output.txt');
reset(input);
rewrite(output);
for i:=0 to 11 do
  for j:=0 to 11 do
    P[i,j]:=' ';
kol:=0;
for i:=1 to 10 do begin
        for j:=1 to 10 do begin
                Read(P[i,j]);
                end;
                readln();
                end;
                     for i:=1 to 10 do
                       for j:=1 to 10 do begin
                         if (P[i,j]='#')and(P[i+1,j]<>'#')and(P[i,j+1]<>'#') then inc(kol);
                        end;
readln(n);
for i:=1 to n do     begin
                 readln(x,probel,y);
                 k:=number(y);
                        if P[x,k]='.' then writeln('MISS')
                        else if (P[x,k]='#')and(prov(x,k,P)=true)
                                then begin P[x,k]:='.';dec(kol);
                                        if kol=0
                                        then begin writeln('GAME OVER');close(output);close(input); Halt; end
                                        else begin writeln('DEAD');end;
                                        end
                                else begin P[x,k]:='.';writeln('HIT'); end;
                                end;
END.
