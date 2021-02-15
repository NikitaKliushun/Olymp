var a:array[0..101]of longint;
    f:text;
    n,k,t,i,j,ans,min:longint;
begin
assign(f,'input.txt');
reset(f);
readln(f,n,k);
for i:=1 to n do
 begin
  read(f,t);
  inc(a[t]);
 end;
close(f);
assign(f,'output.txt');
rewrite(f);

min:=101;

for i:=1 to 100 do
 begin
  ans:=ans+(a[i] div k);
  if (a[i] div k>0) and (i<min) then min:=i;
  a[i]:=a[i] div k;
 end;
if min=101 then begin write(f,0); close(f);halt;end; 
writeln(f,ans);
write(f,min);

for i:=1 to a[min]-1 do
 write(f,' ',min);
 
for i:=min+1 to 100 do
 for j:=1 to a[i] do
  write(f,' ',i);  
close(f);  
end.