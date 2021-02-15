var
n,b,k,a,c:int64;
s:text;
begin
assign(s,'input.txt');
reset(s);
readln(s,a,c);
close(s);
k:=0;
b:=a;
n:=(c div 2);
  while a<=n+1 do begin
    if c mod a=0 then inc(k);
    a:=a+b;
  end;
k:=k+1;
assign(s,'output.txt');
rewrite(s);
writeln(s,k);
close(s);
end.
