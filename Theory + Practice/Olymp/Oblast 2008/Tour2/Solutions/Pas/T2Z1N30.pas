{Михайловский Михаил Николаевич
Минский государственный областной лицей}
program T2Z1N30;
var
    i,n:longint;
    a:array[1..100] of longint;
    res,min,max:longint;
procedure Sort;
var i,j,t:longint;
begin
  for i:=n downto 2 do
    for j:=1 to i-1 do
      if a[j]>a[j+1] then begin
                            t:=a[j];
                            a[j]:=a[j+1];
                            a[j+1]:=t;
                          end;
end;
begin
  assign(input,'input.txt');
  reset(input);
  assign(output,'output.txt');
  rewrite(output);
  read(n);
  min:=0;
  max:=0;
  for i:=1 to n do
    read(a[i]);
  Sort;
  for i:=1 to n div 2 do
    min:=min+a[i];
  for i:=(n div 2)+1 to n do
    max:=max+a[i];
  res:=max-min;
  writeln(res);
  close(input);
  close(output);
end.
