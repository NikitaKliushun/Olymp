program z3;
var
  n, k, i, x, max : longint;
  f1, f2 : text;
begin
  assign(f1,'input.txt'); reset(f1);
  assign(f2,'output.txt'); rewrite(f2);
  
  read(f1,n);
  read(f1,max); k := 1;
  for i := 2 to n do
    begin
      read(f1, x);
      if x>max
         then begin
                max := x;
                k := k + 1;
              end;
    end;
  write(f2, k);
  
  close(f1); close(f2);   
end.