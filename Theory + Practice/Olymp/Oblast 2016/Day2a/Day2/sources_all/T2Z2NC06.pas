{Елисеев Иван Алексеевич, г.Солигорск, 8 класс, Z2}
program T2Z2NC06;
var h,b:array[1..3000] of longint;
    i,j,l,m,n:longint;
procedure vvod;
  begin
    assign(input,'input.txt');
    reset(input);
    readln(m,n);
    for i:=1 to m do
      read(h[i]);
    for i:=1 to n do
      read(b[i]);
    close(input);
  end;
begin
  assign(output,'output.txt');
  rewrite(output);
  vvod;
  if m=2 then
    for i:=1 to n-1 do
      for j:=i+1 to n do
        if h[1]+b[i]<h[2]+b[j] then
          begin
            writeln(i,' ',j);
            exit;
          end;
  if m=3 then
    for i:=1 to n-2 do
      for j:=2 to n-1 do
        for l:=3 to n do
          if (h[1]+b[i]<h[2]+b[j]) and (h[2]+b[j]<h[3]+b[l]) then
            begin
              writeln(i,' ',j,' ',l);
              exit;
            end;
  writeln(-1);
  close(output);
end.
