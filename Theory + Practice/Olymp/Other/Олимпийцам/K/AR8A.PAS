{shahmati i zerna}
program ar8a;
uses Crt;
var c:array[0..5000] of longint;
    lc,n,i,j:longint;
procedure Perenos;
  var i:longint;
  begin
    for i:=0 to lc-1 do
      begin
        c[i+1]:=c[i+1]+c[i] div 10;
        c[i]:=c[i] mod 10;
      end;
    while c[lc]>0 do
      begin
        c[lc+1]:=c[lc+1]+c[lc] div 10;
        c[lc]:=c[lc] mod 10;
        lc:=lc+1;
      end;
    while (lc>1) and (c[lc-1]=0) do
      lc:=lc-1;
  end;
begin
  ClrScr;
  n:=64;
  FillChar(c,SizeOf(c),0);
  lc:=1;
  c[0]:=1;
  for i:=1 to 64 do
    begin
      for j:=0 to lc-1 do
        c[j]:=c[j]*2;
      Perenos;
    end;
  c[0]:=c[0]-1;
  for i:=lc-1 downto 0 do
    Write(c[i]);
  Writeln;
end.
