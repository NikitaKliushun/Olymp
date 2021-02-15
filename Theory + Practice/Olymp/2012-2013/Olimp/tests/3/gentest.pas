Program z3;
var 
  a:array[1..60001] of word;
  n,i,x,l,r,maxl,maxr,t:word;
  f1,f2:text;
begin
  assign(f1,'in.txt');
  rewrite(f1);
  
  read(n);
  writeln(f1,n);
  for i:=1 to n do
    a[i]:={2}random(255)+1;
{  for i:=1 to n do
    a[i]:=i;
  for i:=1 to 100000 do
    begin
      l:=random(n)+1;
      r:=random(n)+1;
      t:=a[l]; a[l]:=a[r]; a[r]:=t;
    end;}
  for i:=1 to n do
    write(f1,a[i],' ');
  close(f1);
end.