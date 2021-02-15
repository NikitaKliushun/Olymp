Program z1;
var 
  n,x,y,p:longint;
  z:real;
  f1,f2:text;
begin
  assign(f1,'in.txt');
  reset(f1);
  assign(f2,'out.txt');
  rewrite(f2);
  
  read(f1,n,x,y,z);
  p:=x + (n div 3-y) + round((n div 3)*z);
  write(f2,p);
  
  close(f1);
  close(f2);
end.