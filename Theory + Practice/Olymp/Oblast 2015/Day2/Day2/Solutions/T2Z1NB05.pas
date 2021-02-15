program z2;
var
  s,t:ansistring;
  i,j,k,a,b:longint;
begin
  assign(input,'input.txt');
  reset(input);
  assign(output,'output.txt');
  rewrite(output);


    readln(s);
    read(t);
    if s=t
      then write(length(s))
      else
        begin
          i:=length(s);
          j:=length(t);
         // write(t);
          while s[i]=t[j] do
            begin
              i:=i-1;
              j:=j-1;
              k:=k+1;
            end;
          write(k);
        end;

  close(input);
  close(output);
end.