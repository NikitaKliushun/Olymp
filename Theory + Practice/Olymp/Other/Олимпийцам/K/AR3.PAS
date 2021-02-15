{NOD i NOK}
program ar3;
var x,y:longint;
function Nod(a,b:longint):longint;
  begin
    while (a<>0) and (b<>0) do
      if a>b
         then a:=a mod b
         else b:=b mod a;
    Nod:=a+b;
  end;
function Nok(a,b:longint):longint;
  begin
    Nok:=a div Nod(a,b) * b;
  end;
begin
  Read(x,y);
  Writeln(Nod(x,y),' ',Nok(x,y));
end.