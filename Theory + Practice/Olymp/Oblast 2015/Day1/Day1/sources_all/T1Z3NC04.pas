{Неведомский Дмитрий Альбертович, г.Жодино, 9Б, задача №2}
var n,m,ak,bk,x,i,j,f:integer;
    a,b,aa,ab:array[1..10000] of byte;
    fin,fout:text;
begin
  assign(fin, 'input.txt');
  reset(fin);
  read(fin, n);
  readln(fin, m);
  for i:=1 to n do
    read(fin, aa[i]);
  readln(fin);
  for i:=1 to m do
    read(fin,ab[i]);
  close(fin);
  f:=1; ak:=0;
  for i:=1 to n do
    begin
      for j:=1 to aa[i] do
        begin
          inc(ak);
          a[ak]:=f;
        end;
      if f=1 then f:=0
             else f:=1;
    end;
  bk:=0;
  f:=1;
  for i:=1 to m do
    begin
      for j:=1 to ab[i] do
        begin
          inc(bk);
          b[bk]:=f;
        end;
      if f=1 then f:=0
             else f:=1;
    end;
  n:=0;
  for i:=1 to ak do
    begin
      if a[i]=1 then
        begin
          x:=1;
          for j:=1 to ak-i do
            x:=x*2;
          n:=n+x;
        end;
    end;
  m:=0;
  for i:=1 to bk do
    begin
      if b[i]=1 then
        begin
          x:=1;
          for j:=1 to bk-i do
            x:=x*2;
          m:=m+x;
        end;
    end;
  x:=n xor m; ak:=0;
  while x<>0 do
    begin
      inc(ak);
      a[ak]:=x mod 2;
      x:=x div 2;
    end;
  f:=1;                   x:=0;
  assign(fout,'output.txt');
  rewrite(fout);       n:=0;
  for i:=ak downto 1 do
    begin
      if a[i]=f then inc(x)
        else
          begin
            if f=0 then f:=1 else f:=0;
            write(fout, x, ' ');
            x:=1;
          end;
    end;
  write(fout,x);
  close(fout);
  end.