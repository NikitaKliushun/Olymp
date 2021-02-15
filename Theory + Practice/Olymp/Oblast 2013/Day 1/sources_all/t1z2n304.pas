program wetr;
var t,a,c,b,aa,cc,kol:real;
f1,f2:text;
begin
  assign(f1,'input.txt');
  reset (f1);
  read (f1,a,c);
  close (f1);

  aa:=a;
  cc:=c;

  while (aa<=cc) do
    begin
      t:=cc/aa;
      if (frac(t)=0)
        then kol:=kol+1;
      aa:=aa+a;
    end;

  assign (f2,'output.txt');
  rewrite(f2);
  write  (f2,kol:0:0);
  close  (f2);


end.