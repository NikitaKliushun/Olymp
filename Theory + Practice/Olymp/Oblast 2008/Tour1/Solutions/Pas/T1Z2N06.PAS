program n2;
 var a:array[1..50]of longint;
     i,s,kol,n,k:longint;
begin
 assign(input,'input.txt');
 assign(output,'output.txt');
 reset(input);
 rewrite(output);
 read(n,k);
 s:=0;
 kol:=0;
 for i:=1 to n do begin
  read(a[i]);
  s:=s+a[i];
 end;
 for i:=1 to n do
  if (a[i]>=k)and(s-a[i]>=k) then kol:=kol+1;
 write(kol*2);
 close(input);
 close(output);
end.
