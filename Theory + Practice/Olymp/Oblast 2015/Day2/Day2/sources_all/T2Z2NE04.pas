program yan;
  var i,j,x,y,a,b,n:longint; f1,f2:text; min:uint64;
begin
  assign(f1,'input.txt'); reset(f1);
  assign(f2,'output.txt'); rewrite(f2);
  read(f1,n);  min:=maxlongint;
  for i:=2 to round(sqrt(n)) do
    begin
      if n mod i=0 then
        begin
          x:=n; y:=0;
          while x mod i=0 do begin inc(y); x:=x div i; end;
        end;
      if x=1 then
        begin
          a:=0;
          while y mod 3<>0 do begin inc(y); inc(a); end;
          b:=1;
          for j:=1 to a do b:=b*i;
          if b<min then min:=b;
          x:=0;
        end;
    end;
  if min=maxlongint then begin min:=n; min:=sqr(min); end;
  write(f2,min);
  close(f1); close(f2);
end.