program sdf;
var
n,z,s,q,a,k,b:longint;
i,l:integer;
{program by Pozdniak Artyr from Zhodino}
begin assign (input, 'input.txt');
reset(input);
read(k);
close(input);
n:=1;
z:=1;
a:=0;
b:=0;
l:=1000;


 while (N*z)<=k do
  begin
  begin
  s:=abs(n-z);
  q:=k-(n*z);
  if l>(s+q)   then
  begin
  l:=s+q;
  a:=n;
  b:=z;
  end;
  n:=n+1;
  end;
  if n= trunc(k/z)+1 then
  begin
  n:=z;
  z:=z+1;
  end;
  end;
  if n=2 then
  begin
  a:=1; b:=2;
  end;

assign(output, 'output.txt');
rewrite(output);
write(a,' ',b);
close(output);
end.




