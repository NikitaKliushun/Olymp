Var
  d,n,r:longint;
  t1,t2:text;
function cub (p1:longint):boolean;
var p2:longint;
  Begin
  cub:=false;
  for p2:=2 to round(sqrt(p1)) do
    if p2*sqr(p2)=p1 then
      Begin
        cub:=true;
        break;
      end;
  end;
Begin
  assign (t1,'input.txt'); reset (t1);
  assign (t2,'output.txt'); rewrite (t2);
  read (t1,d);
  r:=d;
  n:=1;
  while (cub (d)=false) and (d<=1000) do
    Begin
      n:=n+1;
      d:=d+r;
    end;
  write (t2,n);
  close (t1);
  close (t2);
end.
