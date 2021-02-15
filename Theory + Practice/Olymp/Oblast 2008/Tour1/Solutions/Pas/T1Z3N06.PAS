program n3;
 var a:array[1..16000] of longint;
     j,z,i,n,m: longint;
begin
 assign(input,'input.txt');
 assign(output,'output.txt');
 reset(input);
 rewrite(output);
 read(n,m);
 for i:=1 to n do a[i]:=i;
 read(z);
 write(z);
 for i:=1 to z do a[i]:=a[i]+1;
 a[z]:=1;
 for i:=2 to m do begin
  read(z);
  write(' ',a[z]);
  for j:=1 to n do
   if a[j]<a[z] then a[j]:=a[j]+1;
  a[z]:=1;
 end;
 close(input);
 close(output);
end.