//Kamenko Pavel
var n,k,tek,i,j,max,ans:longint;
    d,a:array[0..100010]of longint;
    q:array[0..10000010]of longint;
    f:text;
begin
 assign(f,'input.txt');
 reset(f);
 read(f,n,k);
 for i:=1 to n do
  read(f,a[i]);
 close(f);
 for i:=1 to k do
  begin
   if i mod 2=1
    then
     begin
      for j:=1 to n do
       begin
        inc(tek);
        q[tek]:=a[j];
       end;
     end
    else
     begin
      for j:=n-1 downto 2 do
       begin
        inc(tek);
        q[tek]:=a[j];
       end;
     end;
  end;
 if k mod 2=0
  then begin inc(tek);q[tek]:=a[1];end;
 i:=1;
 tek:=1;
 while q[tek]>0 do
  begin
   max:=0;
   for i:=q[tek]-1 downto 1 do
     if d[i]>max
      then  max:=d[i];
   if  max+1 > d[q[tek]]
    then d[q[tek]]:=max+1;
   inc(tek);
  end;
 for i:=1 to n do
  if d[i]>ans
   then ans:=d[i];
 assign(f,'output.txt');
 rewrite(f);
 write(f,ans);
 close(f);
end.
