program yan;
  var s,s1:ansistring;
      i,j,x,y,a,b,n,m:longint; f1,f2:text;
  function min(a,b:longint):longint;
    begin
      if a<b then exit(a) else exit(b);
    end;
  function max(a,b:longint):longint;
    begin
      if a>b then exit(a) else exit(b);
    end;
begin
  assign(f1,'input.txt'); reset(f1);
  assign(f2,'output.txt'); rewrite(f2);
  read(f1,s); readln(f1);
  read(f1,s1);  a:=length(s); b:=length(s1);
  if a>b then
    while length(s1)<>length(s) do s1:=' '+s1 else
    while length(s)<>length(s1) do s:=' '+s;
  for i:=length(s) downto max(a,b)-min(a,b)+1 do
    if s[i]=s1[i] then inc(x) else break;
  write(f2,x);
  close(f1); close(f2);
end.