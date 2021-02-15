program z2;
var
  x, v1, v2, t1, t2, tt1, vv1, vv2, tt2, a, b, min, max, i : longint;
  f1, f2 : text;
begin
  assign(f1,'input.txt'); reset(f1);
  assign(f2,'output.txt'); rewrite(f2);
  
  read(f1,x, v1, t1, v2, t2);
  a := x div v1;
  if x mod v1 > 0 
     then a := a + 1;
  min := t1*((a-1)*2 + 1);   
  for i := 0 to a-1 do
    begin
      vv1 := v1 * i;
      tt1 := t1 * ((i-1)*2+1);
      vv2 := x - vv1;
      if vv2<0 then vv2 := 0;
      b := vv2 div v2;
      if vv2 mod v2>0
         then b := b + 1;
      tt2 := t2 * ((b-1)*2+1);
      if tt1<tt2
         then max := tt2
         else max := tt1;
      if max < min
         then min := max;
    end;
  
  write(f2, min);
             
  close(f1); close(f2);   
end.