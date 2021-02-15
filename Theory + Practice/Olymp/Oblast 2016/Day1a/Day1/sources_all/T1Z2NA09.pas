var f1,f2:text;
    k,y,i:longint;

function nextB(x:longint):longint;
var res:longint;
  begin
    res:=1;
    for i:=1 to 30 do
      if (res>x)and(res and x = 0)
        then
          begin
            nextB:=res;
            exit;
          end
        else
          res:=res*2;
  end;

begin
  assign(f1,'input.txt'); reset(f1);
  assign(f2,'output.txt'); rewrite(f2);
  readln(f1,k,y);

  if k=1 then writeln(f2,y);
  if k=2 then
    writeln(f2,y,' ',y+nextB(y));
  if k=3 then
    writeln(f2,y,' ',y+nextB(y),' ',y+nextB(y)+nextB(y+nextB(y)));


  close(f1); close(f2);
end.
