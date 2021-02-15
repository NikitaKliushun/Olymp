program t1z3nc04;
var
kolodin,koldwa,n,i,code,c,f,m,o,b:longint;
Function max(a,b:longint):longint;
 begin
  if a>b then max:=a else max:=b;
 end;
BEGIN
assign(input,'input.txt');
assign(output,'output.txt');
reset(input);
rewrite(output);
code:=0;
read(n);

for i:=1 to n do
 begin
  read(c);
  if c=1 then inc(kolodin) else inc(koldwa);

  end
code:=random(2)+1;
  if code=1 then write(max(kolodin,koldwa)) else write(n);
close(input);
close(output);
end.
