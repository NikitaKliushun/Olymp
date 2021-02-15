program z1;
var
  x, y, x2, y2 : int64;
  f1, f2 : text;
begin
  assign(f1,'input.txt'); reset(f1);
  assign(f2,'output.txt'); rewrite(f2);
  
  read(f1,x, y);
  x2 := 0; y2 := 0;
  while x > 0 do  
    begin
      x2 := x2 * 10 + x mod 10;
      x := x div 10;
    end;
  while y > 0 do  
    begin
      y2 := y2 * 10 + y mod 10;
      y := y div 10;
    end;
    
  if x2 > y2
     then write(f2,y2)
     else write(f2,x2);
             
  close(f1); close(f2);   
end.