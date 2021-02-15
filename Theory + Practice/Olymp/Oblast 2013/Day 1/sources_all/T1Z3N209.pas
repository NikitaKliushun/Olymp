//Филипович Антон Федорович, МГОЛ, 10 А класс
var a,d:array[1..400,1..400] of byte;
    k,i,j,n,m:integer;
    c:char;
procedure enter(x1,y1,x2,y2:integer);
  var i,j:integer;
  begin
    fillchar(d,sizeof(d),0);
    for i:=1 to x2 do
      for j:=1 to y2 do
        d[i,j]:=a[i+x1-1,j+y1-1];
  end;
procedure check(x,y:integer);
  var n,i,j:integer;
      f:boolean;
  begin
    f:=true;
    if x mod 2 =0 then n:= x div 2
                  else n:= x div 2+1;

    for i:=1 to n do
      for j:=1 to y do
        if d[i,j]<>d[x-i+1,j]
          then f:=false;

    if f then inc(k);
  end;
procedure p(x,y:integer);
  var i,j:integer;
  begin
    for i:=2 to n-x+1 do
      for j:=1 to m-y+1 do
        begin
          enter(x,y,x+i-1,y+j-1);
          check(i,j);
        end;
  end;
begin
  assign(input,'input.txt'); reset(input);
  assign(output,'output.txt'); rewrite(output);

  readln(n,m);

  for i:=1 to n do
    begin
      for j:=1 to m do
        begin
          read(c);
          if c='1' then a[i,j]:=1;
        end;
      readln;
    end;

  for i:=1 to n do
    for j:=1 to m do
      p(i,j);

  write(k);

  close(input);
  close(output);
end.