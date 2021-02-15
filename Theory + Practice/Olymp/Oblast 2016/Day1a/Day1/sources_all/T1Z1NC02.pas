{Важник Артём Андреевич, г. Молодечно, 9 "А" класс, з. №1}
program T1Z1NC02;
var f1, f2:text;
a:array [0..11, 0..11] of byte;
c:char;
i, j, l, n, k:byte;
begin
  assign (f1, 'input.txt');
  assign (f2, 'output.txt');
  reset (f1);
  rewrite (f2);

  for i:=1 to 10 do
    begin
    for j:=1 to 10 do
      begin
      read (f1, c);
      if c='.' then a[i, j]:=0
        else
          begin
          a[i, j]:=1;
          k:=k+1;
          end;
    end;
  readln (f1);
  end;

  readln (f1, n);
  i:=0;
  while (i<=n) and (k>0) do
    begin
    i:=i+1;
    read (f1, j);
    read (f1, c);
    readln (f1, c);
    if c='a' then l:=1;
    if c='b' then l:=2;
    if c='c' then l:=3;
    if c='d' then l:=4;
    if c='e' then l:=5;
    if c='f' then l:=6;
    if c='g' then l:=7;
    if c='h' then l:=8;
    if c='i' then l:=9;
    if c='k' then l:=10;
    if a[j, l]=0 then writeln (f2, 'MISS');
    if a[j, l]=1 then
      if (a[j-1, l]=1) or (a[j+1, l]=1) or (a[j, l-1]=1) or (a[j, l+1]=1) then
        begin
        a[j, l]:=0;
        k:=k-1;
        writeln (f2, 'HIT');
        end
        else
          begin
          a[j, l]:=0;
          k:=k-1;
          if k=0 then write (f2, 'GAME OVER')
            else writeln (f2, 'DEAD');
          end;
    end;

  close (f1);
  close (f2);
end.
