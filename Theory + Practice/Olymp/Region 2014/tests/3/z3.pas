Program z3;
  
var
  a : array [1..100,1..100] of byte;
  n, m, k, k2, x, y, dx, dy, i, j : integer;
  f1,f2 : text;
{function NOD( a, b : integer) : integer;
  begin
    while (a<>0) and (b<>0) do
      if a>b
         then a:=a mod b
         else b:=b mod a;
    NOD:=a+b;     
  end;}
begin
  assign(f1,'input.txt');
  reset(f1);
  assign(f2,'output.txt');
  rewrite(f2);

  read(f1,n,m);
  if n>m
     then begin
            i:=n; n:=m; m:=i;
          end;
  k:=0; x:=1; y:=1; dx:=1; dy:=1;
  while not ((x=1) and (y=m) or (x=n) and (y=1) or (x=n) and (y=m)) do
    begin
      if a[x,y]=0 then k:=k+1;
      a[x,y]:=1;
      if (x+dx<1) or (x+dx>n) then dx:=-dx;
      if (y+dy<1) or (y+dy>m) then dy:=-dy;
      x:=x+dx; y:=y+dy;
    end;
  a[x,y]:=1; k:=k+1;
  
  // k2:=n * m div 2;
  // {только диагональ}
  //  if n=m then k2:=n;
  // {попадание после прохода вправо}
  // if (m-1) mod (n-1)=0
  //   then k2:=m;
  // {туда и обратно}
  // if NOD(n-1,m-1)=n div 2
  //   then k2:=2*m-1-(m-1) div (n-1);
  // ???
  
  {for i:=1 to n do
    begin
      for j:=1 to m do
        write(a[i,j],' ');
      writeln;  
    end;}
  write(f2, k);
  
  close(f1);
  close(f2);
end.