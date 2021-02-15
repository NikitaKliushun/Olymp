{Vivesti n-ju cifru chisla}
program ar1;
var x,n,i:longint;
begin
  Read(x,n);
  for i:=1 to n do
    x:=x div 10;
  Writeln(x mod 10);
end.