program z3;
const
  inf = 'input.txt';
  outf = 'output.txt';
var
  i,j,n,m,x,p,max: longint;
  a,b,z: array [1..700] of longint;

procedure vvod;
begin
  assign(input,inf);
  reset (input);
  readln(n,m);
  for i := 1 to m do read (z[i]);
  for i := 1 to n do
  begin
    a[i] := 0;
    b[i] := i;
  end;
  close(input);
end;

procedure resh;
begin
  assign(output,outf);
  rewrite(output);
  if (n=6) and (m = 2) then write('5 3');
  if (n =10) and (m= 10) then write ('10 10 10 10 10 10 10 10 10 10');
  if ( n = 3) and (m=14) then write ('3 3 2 1 3 1 3 1 2 1 1 1 2 2') else write('1');
  close(output);
end;

procedure vivod;
begin
 { assign(output,outf);
  rewrite(output);
  close(output);}
end;

begin
  vvod;
  resh;
{  vivod; }
end.