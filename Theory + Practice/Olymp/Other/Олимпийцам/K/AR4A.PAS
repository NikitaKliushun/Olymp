{Pervie 100 prostih}
program ar4a;
var x,i:longint;
function Prost(a:longint):boolean;
  var i:longint;
      t:boolean;
  begin
    t:=True;
    for i:=2 to Trunc(Sqrt(a)) do
      if a mod i=0
         then begin
                t:=False;
                break;
              end;
    Prost:=t;
  end;
function SlProst(x:longint):longint;
  begin
    if x>1
       then x:=x+1+(x mod 2)
       else x:=2;
    while not(Prost(x)) do
      x:=x+2;
    SlProst:=x;
  end;
begin
  x:=1;
  for i:=1 to 100 do
    begin
      x:=SlProst(x);
      Write(x,' ');
    end;
  Writeln;
end.