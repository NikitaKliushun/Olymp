program z2;
var
  i,j,k:longint;
  d:int64;
  a:array[1..10000000]of longint;
begin
  assign(input,'input.txt');
  reset(input);
  assign(output,'output.txt');
  rewrite(output);
    read(d);
      k:=0;
      while d<>k*k*k do
        if k=d
          then
            break
          else
            k:=k+1;
      if d=k*k*k
        then write(1)
        else
          begin
          k:=0;
          a[1]:=d;
          for i:=2 to d*d do
            begin
              a[i]:=a[i-1]+d;
              //write(a[i],' ');
            end;
            //writeln;
          for i:=1 to d*d do
            begin
              if k=1
                then break;
              for j:=2 to d*d do
                if a[i]=j*j*j
                  then
                    begin
                      write(i);
                      k:=k+1;
                      break;
                    end;

            end;
         end;
  close(input);
  close(output);
end.
