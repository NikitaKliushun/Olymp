var p,a:array[0..1000] of longint;
  q,w,z,m,n,i,b,k:longint;
begin
  assign(input,'input.txt');
  reset(input);
  assign(output,'output.txt');
  rewrite(output);
  b:=0;
  readln(n,k);
  for i:=1 to n do         begin
    readln(a[i],p[i]);
    b:=b+a[i];
    end;
  z:=k-b;
  writeln(abs(z));
  if z>=0 then
            for m:=z downto 0 do
              if z<>0 then
                for i:=1 to n do
                  if a[i]<p[i] then begin
                                      a[i]:=a[i]+1;
                                      writeln(i);
                                    end
          else
            for q:=z to 0 do
            if z<>0 then
               for w:=1 to n do
               if a[w]<p[w] then begin
                          a[w]:=a[w]+1;
                          writeln(w);
                                 end;
  close(input);
  close(output);
end.
