program n3;
 var v:array[1..180,1..180] of integer;
     i,n,m,a,b,j:longint;
begin
 assign(input,'input.txt');
 assign(output,'output.txt');
 reset(input);
 rewrite(output);
 read(n,m);
 for i:=1 to m do begin
  read(a,b);
  v[a,b]:=1;
  v[b,a]:=1;
 end;
 for i:=1 to (n div 2)+1 do
  for j:=1 to n do
   if v[i,j]<>0 then
    for m:=1 to n do
     if (m<>i)and(v[j,m]<>0)and((v[i,m]=0)or(v[i,m]>v[i,j]+1))
      then begin
       v[i,m]:=v[i,j]+1;
       v[m,i]:=v[i,j]+1;
      end;
 a:=0;
 for i:=1 to n do
  for j:=i to n do
   if (v[i,j]<>1)and(v[i,j]<>0)
    then a:=a+v[i,j]-1;
 write(2*a);
 close(input);
 close(output);
end.