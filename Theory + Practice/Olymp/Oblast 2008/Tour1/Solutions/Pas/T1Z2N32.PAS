program z2;
const
  inf = 'input.txt';
  outf = 'output.txt';
var
  v,n,k,i: longint;
  a :array[1..50] of longint;

procedure vvod;
begin
  assign(input,inf);
  reset (input);
  readln(n,k);
  for i:= 1 to n do read (a[i]);
  close(input);
end;

procedure resh;
begin
  v := 0;
  if k =1 then
  begin
    if n mod 2 <> 1 then
    begin
      v:=n*n div 2;
    end
  end;
end;

procedure vivod;
begin
  assign(output,outf);
  rewrite(output);
  write(v);
  close(output);
end;

begin
  vvod;
  resh;
  vivod;
end.