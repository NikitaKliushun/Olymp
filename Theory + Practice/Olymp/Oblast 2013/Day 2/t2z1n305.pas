{Терехов Константин Николаевич г.Борисов Задача 1}
program t2z1n305;
var i, j, n, k, n_do:integer;
a,p:array[1..100] of integer;
wh_do:array[1..1000000] of integer;
sum, skok, t:longint;
begin
  Assign(input, 'input.txt');
  Reset(input);
  Assign(output, 'output.txt');
  Rewrite(output);

  readln(input, n, k);
  sum:=0;
  for i:=1 to n do
  begin
    readln(input, a[i], p[i]);
    sum:=sum+a[i];
  end;
  skok:=sum-k;
  n_do:=0;
  {if (skok=0) then
    writeln('0') else   }
  if (skok>0) then  //nad ubr
  begin
    while (skok>0) do
    begin
      i:=1;
      while (a[i]=0) do inc(i);
      while ((a[i]>0) and (skok<>0)) do
      begin
        dec(skok);
        inc(n_do);
        wh_do[n_do]:=(-1)*i;
        dec(a[i]);
        dec(skok);
      end;
    end;
  end else if (skok<0) then // nad dob
  begin
    while (skok<0) do
    begin
      i:=1;
      while (a[i]>=p[i]) do inc(i);
      while ((a[i]<p[i]) and (skok<>0)) do
      begin
        inc(skok);
        inc(n_do);
        wh_do[n_do]:=i;
        inc(a[i]);
      end;
    end;
  end;
  writeln(output, n_do);
  for t:=1 to n_do do
  begin
    writeln(output, wh_do[t]);
  end;
  close(input);
  close(output);

end.