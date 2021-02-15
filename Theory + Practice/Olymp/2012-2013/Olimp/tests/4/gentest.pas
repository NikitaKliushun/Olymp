Program z3;
var
  f11,f12,f2:text;
  c1,c2:char;
  n,m,i:longint;
begin
  assign(f11,'in1.txt');
  rewrite(f11);
  assign(f12,'in2.txt');
  rewrite(f12);

  read(n,m);
  randomize;
  for i:=1 to n do
    write(f11,chr(ord('a')+random(ord('c')-ord('a')+1)));
  for i:=1 to m do
    write(f12,chr(ord('a')+random(ord('c1')-ord('a')+1)));  


  close(f11);
  close(f12);
end.