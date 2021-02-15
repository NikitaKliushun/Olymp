program t2z1n614;
  var a,p:array [1..100] of integer;
      n:byte;
      k,aa,pp,i,j:integer;

begin
  assign(input,'input.txt');
  reset(input);
  assign(output,'output.txt');
  rewrite(output);

  read(n,k);
  aa:=0;
  for i:=1 to n do
    begin
      read(a[i],p[i]);
      aa:=aa+a[i];
    end;
  i:=k-aa;
  writeln(abs(i));
  j:=1;
  while (j<=n) and (i<0) do
    begin
      if a[j]>0 then
        begin
          writeln('-',j);
          dec(a[j]);
          inc(i);
        end
                else
        inc(j);
    end;
  while (j<=n) and (i>0) do
    begin
      if a[j]<p[j] then
        begin
          writeln(j);
          inc(a[j]);
          dec(i);
        end
                else
        inc(j);
    end;

  close(input);
  close(output);
end.
