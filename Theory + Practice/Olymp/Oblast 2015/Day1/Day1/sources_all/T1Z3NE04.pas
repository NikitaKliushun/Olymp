program yan;
  var ar,an:array[1..10000001]of byte;
      i,j,x,y,a,b,n,m:longint; f1,f2:text;
  function max(a,b:longint):longint;
    begin
      if a>b then exit(a) else exit(b);
    end;
begin
  assign(f1,'input.txt'); reset(f1);
  assign(f2,'output.txt'); rewrite(f2);
  readln(f1,n,m);  a:=0;
  for i:=1 to n do
    begin
      read(f1,x);
      if i mod 2<>0 then
        begin
          for j:=a+1 to a+x do ar[j]:=1;
          a:=j;
        end else
      a:=a+x;
    end;
  readln(f1); b:=0;
  for i:=1 to m do
    begin
      read(f1,x);
      if i mod 2<>0 then
        begin
          for j:=b+1 to b+x do an[j]:=1;
          b:=j;
        end else
      b:=b+x;
    end;      j:=0;
  if a>b then
    begin
      for i:=a-b+1 to a do
        begin
          inc(j);
          if (ar[i]=1)and(an[j]=1) then ar[i]:=0 else
          if (ar[i]=1)or(an[j]=1) then ar[i]:=1;
        end;
      i:=1;  y:=0;
  while (ar[i]=0)and(i<=a) do inc(i);
  if i>a then y:=-1;
  for j:=i to a-1 do
    if ar[j]=ar[j+1] then inc(y) else begin write(f2,y+1,' '); y:=0; end;
  write(f2,y+1);
    end else
    begin
      for i:=b-a+1 to b do
        begin
          inc(j);
          if (ar[j]=1)and(an[i]=1) then an[i]:=0 else
          if (ar[j]=1)or(an[j]=1) then an[i]:=1;
        end;
      i:=1;  y:=0;
  while (an[i]=0)and(i<=b) do inc(i);
  if i>b then y:=-1;
  for j:=i to b-1 do
    if an[j]=an[j+1] then inc(y) else begin write(f2,y+1,' '); y:=0; end;
  write(f2,y+1);
    end;
  close(f1); close(f2);
end.