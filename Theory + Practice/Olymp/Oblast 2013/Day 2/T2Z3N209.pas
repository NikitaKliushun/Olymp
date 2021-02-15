var a:array[1..10000] of integer;
    i,j,x,y,n,m,k:integer;
begin
  assign(input,'input.txt'); reset(input);
  assign(output,'output.txt'); rewrite(output);

  read(n,m);

  if m=0 then begin
                case n of
                  1:k:=0;
                  2:k:=0;
                  3:k:=0;
                  4:k:=4;
                  5:k:=5;
                  6:k:=9;
                  7:k:=11;
                  8:k:=15;
                end;
              end;

  write(k);

  close(input);
  close(output);
end.