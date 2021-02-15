{Kukresh Eduard Aleksandrovich, Soligorsk, 11*A, T2Z2N50}
program T2Z2N50;
var c,N,K:longint;
f1,f2:text;
S:char;
begin
  assign(f1,'input.txt');
  assign(f2,'output.txt');
  reset(f1);
  read(f1,N,K);
  readln(f1);
  rewrite(f2);
  read(f1,S);
  c:=N*K+3;
  write(f2,c);
  close(f2);
  close(f1);
end.



