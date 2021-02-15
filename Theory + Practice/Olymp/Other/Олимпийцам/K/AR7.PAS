{Sistemi Schislenia}
program ar7;
var s:string;
    n,m:longint;
function Dec_SS(x:longint;n:longint):string;
  var s:string;
      t:longint;
  begin
    s:='';
    while x>0 do
      begin
        t:=x mod n;
        case t of
          0..9:s:=Chr(Ord('0')+t)+s;
          else s:=Chr(Ord('A')+t-10)+s;
        end;
        x:=x div n;
      end;
    Dec_SS:=s;
  end;
function SS_Dec(s:string;n:longint):longint;
  var x,i,t:longint;
  begin
    x:=0;
    for i:=1 to Length(s) do
      begin
        case s[i] of
          '0'..'9':t:=Ord(s[i])-Ord('0');
          else t:=Ord(s[i])-Ord('A')+10;
        end;
        x:=x*n+t;
      end;
    SS_Dec:=x;
  end;
begin
  Readln(s);
  Read(n,m);
  Writeln(Dec_SS(SS_Dec(s,n),m));
end.
