{Терехов Константин Николаевич г.Борисов Задача 2}
var n,k,i,j,mk,max,max_i:longint;
a:array[1..100000] of longint;
b:array[1..100000] of longint;
procedure qsort(l,r:longint);
var i,j,x,c:longint;
begin
  i:=l;
  j:=r;
  c:=a[l+random(r-l+1)];
  repeat
    while (a[i]<c) do inc(i);
    while (a[j]>c) do dec(j);
    if (i<=j) then
    begin
      x:=a[i];
      a[i]:=a[j];
      a[j]:=x;
      x:=b[i];
      b[i]:=b[j];
      b[j]:=x;
      inc(i);
      dec(j);
    end;
  until i>j;
  if (l<j) then qsort(l,j);
  if (i<r) then qsort(i,r);
end;

begin
  Assign(input, 'input.txt');
  Reset(input);
  Assign(output, 'output.txt');
  Rewrite(output);

  readln(input, n, k);
  for i:=1 to n do
  begin
    read(input, a[i]);
    b[i]:=i;
  end;
  if (n=k) then
  begin
    writeln(output, n);
    for i:=1 to n do write(i,' ');
  end else begin
    qsort(1,n);
    if (a[1]=a[n]) then
    begin
      writeln(output, n);
      for i:=1 to n do write(i,' ');
    end else
    begin
      if ((n-1)=k) then
      begin
       max_i:=1;
       max:=a[2]-a[1];
       for i:=2 to n do
        if (max<(a[i]-a[i-1])) then
        begin
          max:=a[i+1]-a[i];
          max_i:=i;
        end;
       if ((max_i=1) and (max=0)) then
       begin
         writeln(output, n);
         for i:=1 to n do write(i,' ');
       end else begin
         writeln(output, n-1);
         for i:=1 to n do if (i<>max_i) then write(b[i],' ');
       end;
      end else begin

      end;
    end;
  end;

  close(input);
  close(output);

end.
