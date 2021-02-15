{Proverka na prostotu}
program ar4;
var x:longint;
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
begin
  Read(x);
  Writeln(Prost(x));
end.