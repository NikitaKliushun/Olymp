Program z1;
var 
  n,x,y,p:longint;
  z:real;
  f1,f2:text;
begin
  assign(f2,'in.txt');
  rewrite(f2);

  read(n);  
  randomize;1
  x:=random(n div 3+1);
  y:=random(n div 3+1);
  z:=random(n div 3+1)/(n div 3);
  write(f2,n,' ',x,' ',y,' ',z:0:2);
  
  close(f2);
end.