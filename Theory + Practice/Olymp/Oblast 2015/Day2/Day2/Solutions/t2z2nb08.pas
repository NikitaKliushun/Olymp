Program t2z2;
var  f1,f2: text;
     i: longint;
     d,f,k: int64;
Begin
      assign(f1,'input.txt');
      assign(f2,'output.txt');
      reset(f1);
      rewrite(f2);
      read(f1,d);
      f:= d;
      while k=0 do
      begin
        for i:= 1 to round(sqrt(d)) do
        begin
          if i*i*i=d then begin
                            k:= d div f;
                            break
                          end;
        end;
        d:= d+f;
      end;
      write(f2,k);
      close(f2);
      close(f1);
end.
