program n1;
 var a:array[1..101] of longint;
     n,i,j,t:longint;
     s:int64;
begin
 assign(input,'input.txt');
 assign(output,'output.txt');
 reset(input);
 rewrite(output);
 read(n);
 s:=0;
 for i:=1 to n do
  read(a[i]);
 for i:=1 to n-1 do
  for j:=i to n do
   if a[i]>a[j] then begin
    t:=a[i];
    a[i]:=a[j];
    a[j]:=t;
   end;
 t:=n div 2;
 for i:=1 to t do begin
  a[i]:=a[i+t]-a[i];
  s:=s+a[i];
 end;
 write(s);
 close(input);
 close(output);
end.
