{Kukresh Eduard Aleksandrovich, Soligorsk, 11*A, T1Z1N50}
program T1Z1N50;
var a,b,c,d,f,i,K,H1,W1,H,W:longint;
f1,f2:text;
begin
  assign(f1,'input.txt');
  assign(f2,'output.txt');
  reset(f1);
  read(f1,K);
  f:=1000;
  d:=K div 2;
  for H1:=1 to d do
  begin
    W1:=K div H1;
    b:=K mod H1;
    a:=abs(H1-W1);
    c:=a+b;
    if c<f
    then
    begin
      f:=c;
      H:=H1;
      W:=W1;
    end;
  end;
  rewrite(f2);
  write(f2,H,' ',W);
  close(f2);
  close(f1);
end.