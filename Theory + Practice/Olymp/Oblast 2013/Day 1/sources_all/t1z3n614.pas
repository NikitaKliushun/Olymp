program T1Z3N614;
  var i,j,i1,i2,j1,j2,n,m:integer;
      a:array[1..400,1..400] of char;
      k:int64;
      s:ansistring;

  procedure check;
    var i,j,i0:integer;
  begin
    i:=i1;
    j:=i2;
    while i<j do
      begin
        i0:=j1;
        while (a[i,i0]=a[j,i0]) and (i0<i2) do
          inc(i0);
        if a[i,i0]=a[j,i0] then
          begin
            inc(i);
            dec(j);
          end
                                  else
          exit;

      end;
    inc(k);
  end;

begin
  assign(input,'input.txt');
  reset(input);
  assign(output,'output.txt');
  reset(output);

  read(n);
  readln(m);
  for i:=1 to n do
    begin
      readln(s);
      for j:=1 to m do
        a[i,j]:=s[j];
    end;

  for i1:=1 to n-1 do
    for j1:=1 to m do
      for i2:=i1+1 to n do
        for j2:=j1 to m do
          check;
  write(k);

  close(input);
  close(output);
end.