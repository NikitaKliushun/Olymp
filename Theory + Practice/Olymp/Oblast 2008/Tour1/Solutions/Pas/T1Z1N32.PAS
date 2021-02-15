program v;
const
  inf = 'input.txt';
  outf = 'output.txt';
var
  h,w,k,mh,mw,p,m: longint;

procedure vvod;
begin
  assign(input,inf);
  reset (input);
  read(k);
  close(input);
end;

procedure resh;
begin
  m := 1000000000;
  for h:= 0 to k div 2  do
  for w :=0 to k div 2  do
  begin
    p := k-h*w+abs(h-w);
    if (m > p) and (h*w <= k) then
    begin
     m := p;
     mh := h;
     mw := w;
    end;
  end;
end;

procedure vivod;
begin
  assign(output,outf);
  rewrite(output);
  write(mh,' ',mw);
  close(output);
end;

begin
  vvod;
  resh;
  vivod; 
end.