{Razlozenie na prostie mnoziteli}
program ar5;
var x,i:longint;
begin
  Read(x);
  i:=2;
  while i<=Sqrt(x) do
    begin
      if x mod i=0
         then begin
                Write(i,' ');
                x:=x div i;
              end
        else i:=i+1;
    end;
  if x>1
     then Write(x);
  Writeln;
end.
