program Gen;
var
  a       :      array [1..100001] of LongInt;
  i,n     :      LongInt;
begin
    ReadLn(n);
    Randomize;
    Assign(Output,'Posl.in');
    ReWrite(Output);
    WriteLn(n);
    for i:=1 to n-1 do
      begin
          a[i]:=Random(1000)+1;
          Write(a[i],' ');
      end;
    WriteLn(Random(1000)+1);
    Close(Output);
end.