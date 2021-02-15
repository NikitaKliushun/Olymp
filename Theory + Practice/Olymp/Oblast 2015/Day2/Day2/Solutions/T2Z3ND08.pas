program z_3;
var a,s,k,k1,n:integer;
    f1,f2:text;
begin
assign(f1,'input.txt');
reset(f1);
assign(f2,'output.txt');
rewrite(f2);
read(f1,n,k);
n:=0;
k:=0;
readln(f1,a);
  if a=0 then begin
                  s:=s+1;
                  k1:=k1+0;
                  write(f2,s);
                  exit;
                 end;
  if a=1 then begin
                  s:=s+2;
                  k1:=k1+2;
                  write(f2,s);
                  exit;
                 end;
  if a=2 then begin
                  s:=s+3;
                  k1:=k1+4;
                  write(f2,s);
                  exit;
                 end;
  if a=3 then begin
                  s:=s+3;
                  k1:=k1+4;
                  write(f2,s);
                  exit;
                 end;
  if a=4 then begin
                  s:=s+3;
                  k1:=k1+4;
                  write(f2,s);
                  exit;
                 end;
  if a=5 then begin
                  s:=s+3;
                  k1:=k1+4;
                  write(f2,s);
                  exit;
                 end;
  if a=6 then begin
                  s:=s+2;
                  k1:=k1+4;
                  write(f2,s);
                  exit;
                 end;
  if a=7 then begin
                  s:=s+2;
                  k1:=k1+2;
                  write(f2,s);
                  exit;
                 end;
  if a=8 then begin
                  s:=s+1;
                  k1:=k1+0;
                  write(f2,s);
                  exit;
                 end;
  if a=9 then begin
                  s:=s+2;
                  k1:=k1+4;
                  write(f2,s);
                  exit;
                end;
close(f1);
close(f2);
end.
