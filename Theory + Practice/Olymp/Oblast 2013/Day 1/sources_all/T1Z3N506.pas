program zz1;
var a:array[1..400,1..400] of shortint;
    n,i,j,m,ti,tj,y:integer;
    t:int64;


begin
  assign(input,'input.txt');
  assign(output,'output.txt');
  reset(input);
  rewrite(output);

  read(n,m);

  for i:=1 to n do
  begin
    for j:=1 to m do read (a[i,j]);
  readln;
  end;

  for i:=1 to n-1 do
    for j:=1 to m do
      for ti:=1 to n-i do if a[i,j]=a[i+ti,j] then
        begin
          tj:=1;
          inc(t);
          while (a[i,j+tj]=a[i+ti,j+tj]) and (tj<=(m-j)) do
          begin
            if ti<3 then inc(t);
            inc (tj);
          end;
        end;

  for i:=1 to n do
  begin
    for j:=1 to m do write (a[i,j],' ');
  writeln;
  end;
  write(t);

  close(input);
  close(output);
end.
