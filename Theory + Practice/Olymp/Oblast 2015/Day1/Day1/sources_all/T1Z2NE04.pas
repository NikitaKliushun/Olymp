program yan;
  var a,b,x,y:longint; f1,f2:text; ans,n,m:int64;
  function min(a,b:longint):longint;
    begin
      if a<b then exit(a) else exit(b);
    end;
  function max(a,b:longint):longint;
    begin
      if a<b then exit(a) else exit(b);
    end;
begin
  assign(f1,'input.txt'); reset(f1);
  assign(f2,'output.txt'); rewrite(f2);
  read(f1,a,b);
  if a>b then begin x:=a; a:=b; b:=x; end;
  n:=1; m:=1;
  while n*m<=a+b do
    begin
      if n*m<=a+b then
        begin
          if ((n*m)mod 2=0)and((n*m) div 2<=a) then inc(ans) else
          if ((n*m)mod 2<>0)and((n*m)div 2<=a)and((n*m)div 2+1<=b) then
            inc(ans);
          inc(m);
        end;
      if n*m>a+b then begin inc(n); m:=n; end;
    end;
  write(f2,ans);
  close(f1); close(f2);
end.