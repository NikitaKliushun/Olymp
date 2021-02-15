Program z2;
var n,m:extended;
res,k:int64;
p:boolean;
Begin
  assign(input,'input.txt');
  reset(input);
  assign(output,'output.txt');
  rewrite(output);

res:=1;
read(n);
m:=n;

while p=false do begin
  k:=trunc(exp(ln(m)*(1/3)));
  if k*k*k=m then p:=true else
    begin
      m:=m+n; inc(res);
    end;
end;

write(res);
  close(input); close(output);
End.
