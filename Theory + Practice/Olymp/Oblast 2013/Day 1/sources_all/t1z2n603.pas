{T1Z2N603}
program z;
 var t:text;
 i,j,k:longint;
 a,b,c:int64;
begin
 assign(t,'input.txt');
 reset(t);
 read(t,a,c);
 close(t);


 k:=0;
 i:=1;
 b:=a;
 while b<=c do
  begin
  if c mod b=0
   then k:=k+1;
  i:=i+1;
  b:=a*i;
  end;
 assign(t,'output.txt');
 rewrite(t);
 write(t,k);
 close(t);
end.
