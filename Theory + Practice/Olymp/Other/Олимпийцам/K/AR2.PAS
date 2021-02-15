{Kol-vo i summa cifr chisla}
program ar2;
var x,i,kol,sum:longint;
begin
  Read(x);
  kol:=0;
  sum:=0;
  repeat
    kol:=kol+1;
    sum:=sum+x mod 10;
    x:=x div 10;
  until x=0;
  Writeln(kol,' ',sum);
end.