{Lomako Pavel Alexandrovich, Puhovichsky rayon, 11 klass, Z1}
program T2Z1NC09;
var     t,b,M,W,i,s,chislo:longword;
        D:array[1..100000]of longword; k:longint; fl:boolean;
        f,f1:text;

BEGIN
assign(f,'input.txt');
assign(f1,'output.txt');
reset(f);
rewrite(f1);
k:=0;
Readln(f,M,W);
for i:=1 to m do read(f,D[i]);
readln(f,s,b,t);
chislo:=1;
for i:=1 to M do
        begin
        fl:=false;
          while fl=false do begin
              if (s=b) and (chislo=t) then inc(k);
              if S=W then s:=1
              else inc(s);
              if chislo=D[i] then begin chislo:=1;fl:=true;end
              else inc(chislo)
          end;
        end;
Write(f1,k);
close(f);
close(f1);
END.
