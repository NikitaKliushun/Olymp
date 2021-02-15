program z2;
var y,k,z,t,i,q:longint;
    x:array[1..1000] of longint;
    s,s1:ansistring;
    f1,f2:text;
begin
  assign(f1,'input.txt');
  reset(f1);
  assign(f2,'output.txt');
  rewrite(f2);

  read(f1,k,y);


  z:=y;
  while z>0 do
    begin
      t:=z mod 2;
      str(t,s1);
      s:=s1+s;
      z:=z div 2;
    end;
  x[k]:=y;
  q:=1;
  for i:=1 to length(s) do
      q:=q*2;
  x[1]:=y+(k-1)*q;
  if x[1]<1073741823 then
    begin
     for i:=2 to k-1 do
         x[i]:=y+(k-i)*q;
     for i:=1 to k  do
         write(f2,x[i],' ');
    end
   else write(f2,'-1');
  close(f1);
  close(f2);
end.
