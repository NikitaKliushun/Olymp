Program z4;
var
  f11,f12,f2:text;
  c1,c2:char;
  t:longint;
begin
  assign(f11,'in1.txt');
  reset(f11);
  assign(f12,'in2.txt');
  reset(f12);
  assign(f2,'out.txt');
  rewrite(f2);
  
  t:=0;
  repeat
    read(f11,c1);
    repeat
      read(f12,c2);
    until (Eof(f12)) or (c2=c1);
    if c1=c2
       then t:=t+1
       else break;
  until Eof(f11) or Eof(f12);      
  write(f2,t);
  
  close(f11);
  close(f12);
  close(f2);
end.