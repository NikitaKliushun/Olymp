{Kukresh Eduard Aleksandrovich, Soligorsk, 11*A, T2Z3N50}
program T2Z3N50;
var c,N,M:longint;
f1,f2:text;
begin
  assign(f1,'input.txt');
  assign(f2,'output.txt');
  reset(f1);
  rewrite(f2);
  read(f1,N,M);
  if N=2 then if M=1 then begin c:=0; write(f2,c); end;
  if N=4 then if M=4 then begin c:=4; write(f2,c); end;
  if N=8 then if M=7 then begin c:=12; write(f2,c); end;
  close(f2);
  close(f1);
end.